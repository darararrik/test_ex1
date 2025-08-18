import 'package:flutter/material.dart';

import 'package:test_ex1/domain/interfaces/desk_list.dart';
import 'package:test_ex1/domain/interfaces/interface.dart';
import 'package:test_ex1/domain/interfaces/task_list.dart';
import 'package:test_ex1/domain/models/followed_task_ref/followed_task_ref_model.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/old-providers/providers.dart';

class FollowedListNotifier extends ChangeNotifier implements IDesksTasksList {
  FollowedListNotifier({
    required DeskListNotifier myDeskListNotifier,
    required UsersDesksListNotifier usersDesksNotifier,
  }) : _my = myDeskListNotifier,
       _users = usersDesksNotifier {
    _my.addListener(_onSourceChanged);
    _users.addListener(_onSourceChanged);
  }

  static const int _followedDeskId = -999;
  static const int _followedOwnerId = -1;

  final DeskListNotifier _my;
  final UsersDesksListNotifier _users;

  final List<FollowedTaskRef> _refs = [];

  void _onSourceChanged() => notifyListeners();

  DeskModel get _virtualDesk => DeskModel(
    id: _followedDeskId,
    userId: _followedOwnerId,
    title: "Followed",
    tasks: tasks,
  );

  List<TaskModel> get tasks =>
      _refs.map((ref) => _getTask(ref)).whereType<TaskModel>().toList();

  TaskModel? _getTask(FollowedTaskRef r) {
    if (r.userId == 0) {
      return _my.getTaskByDeskAndId(r.deskId, r.taskId);
    } else {
      return _users.getTaskByDeskAndId(r.deskId, r.taskId, ownerId: r.userId);
    }
  }

  @override
  List<DeskModel> get getDesks => [_virtualDesk];

  @override
  DeskModel get getCurrentDesk => _virtualDesk;

  @override
  void setCurrentDesk(int deskId) {
    // Игнорируем, у нас всегда одна доска
  }

  @override
  Status getStatus({required int taskId, int? userId, int? deskId}) {
    return getTaskById(
          taskId: taskId,
          userId: userId,
          deskId: deskId,
        )?.getActualStatus ??
        Status.lessDay;
  }

  @override
  TaskModel pray({required int taskId, int? deskId, int? userId}) {
    final ref = _refs.firstWhere(
      (r) => r.taskId == taskId && r.deskId == deskId && r.userId == userId,
      orElse: () => FollowedTaskRef(userId: -1, deskId: -1, taskId: -1),
    );

    if (ref.taskId == -1) return TaskModel.createEmpty();

    TaskModel updated;
    if (ref.userId == 0) {
      updated = _my.pray(taskId: taskId, deskId: ref.deskId, userId: 0);
    } else {
      updated = _users.pray(
        taskId: taskId,
        deskId: ref.deskId,
        userId: ref.userId,
      );
    }

    notifyListeners();
    return updated;
  }

  void subscribeById(int taskId, {required int deskId, required int ownerId}) {
    final ref = FollowedTaskRef(
      userId: ownerId,
      deskId: deskId,
      taskId: taskId,
    );

    if (!_refs.contains(ref)) {
      _refs.add(ref);

      final task = _getTask(ref);
      if (task != null) {
        _updateTask(task.copyWith(isFollow: true), ownerId, deskId);
      }

      notifyListeners();
    }
  }

  void unsubscribe(int taskId, {required int deskId, required int ownerId}) {
    _refs.removeWhere(
      (r) => r.taskId == taskId && r.deskId == deskId && r.userId == ownerId,
    );

    final task = _getTask(
      FollowedTaskRef(userId: ownerId, deskId: deskId, taskId: taskId),
    );
    if (task != null) {
      _updateTask(task.copyWith(isFollow: false), ownerId, deskId);
    }

    notifyListeners();
  }

  void _updateTask(TaskModel task, int ownerId, int deskId) {
    if (ownerId == 0) {
      _my.updateTask(task, deskId);
    } else {
      _users.updateTask(task, deskId, ownerId);
    }
  }

  @override
  void dispose() {
    _my.removeListener(_onSourceChanged);
    _users.removeListener(_onSourceChanged);
    super.dispose();
  }

  @override
  TaskModel? getTaskById({required int taskId, int? userId, int? deskId}) {
    return tasks.firstWhere(
      (t) => t.id == taskId,
      orElse: () => TaskModel.createEmpty(),
    );
  }
}
