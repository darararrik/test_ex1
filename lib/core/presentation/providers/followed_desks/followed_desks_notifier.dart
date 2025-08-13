import 'package:flutter/material.dart';

import 'package:test_ex1/core/domain/interface/desk_list.dart';
import 'package:test_ex1/core/domain/interface/task_list.dart';
import 'package:test_ex1/core/domain/models/followed_task_ref/followed_task_ref_model.dart';
import 'package:test_ex1/core/domain/models/models.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';

class FollowedListNotifier extends ChangeNotifier {
  FollowedListNotifier({
    required DeskListNotifier myDeskListNotifier,
    required UsersDesksListNotifier usersDesksNotifier,
  }) : _my = myDeskListNotifier,
       _users = usersDesksNotifier {
    _my.addListener(_onSourceChanged);
    _users.addListener(_onSourceChanged);
  }

  final DeskListNotifier _my;
  final UsersDesksListNotifier _users;

  final List<FollowedTaskRef> _refs = [];

  void _onSourceChanged() => notifyListeners();

  /// Только задачи, на которые подписаны
  List<TaskModel> get tasks => _refs
      .map((ref) => _getTask(ref))
      .whereType<TaskModel>() // отбрасываем null
      .toList();

  TaskModel? _getTask(FollowedTaskRef r) {
    if (r.ownerId == 0) {
      return _my.getTaskByDeskAndId(r.deskId, r.taskId);
    } else {
      return _users.getTaskByDeskAndId(r.deskId, r.taskId, ownerId: r.ownerId);
    }
  }

  TaskModel? getTaskById(int taskId, int userId, int deskId) {
    if (userId == 0) {
      return _my.getTaskByDeskAndId(deskId, taskId);
    } else {
      return _users.getTaskByDeskAndId(deskId, taskId, ownerId: userId);
    }
  }

  /// Подписка по id
  void subscribeById(int taskId, {required int deskId, required int ownerId}) {
    final ref = FollowedTaskRef(
      ownerId: ownerId,
      deskId: deskId,
      taskId: taskId,
    );

    if (!_refs.contains(ref)) {
      _refs.add(ref);

      // обновляем флаг isFollowed в самой задаче
      final task = _getTask(ref);
      if (task != null) {
        final updatedTask = task.copyWith(isFollow: true);
        _updateTask(updatedTask, ownerId, deskId);
      }

      notifyListeners();
    }
  }

  /// Отписка
  void unsubscribe(int taskId, {required int deskId, required int ownerId}) {
    final ref = FollowedTaskRef(
      ownerId: ownerId,
      deskId: deskId,
      taskId: taskId,
    );

    if (!_refs.contains(ref)) {
      _refs.removeWhere(
        (r) => r.taskId == taskId && r.deskId == deskId && r.ownerId == ownerId,
      );

      // обновляем флаг isFollowed в самой задаче
      final task = _getTask(ref);
      if (task != null) {
        final updatedTask = task.copyWith(isFollow: false);
        _updateTask(updatedTask, ownerId, deskId);
      }
      notifyListeners();
    }

    // обновляем флаг isFollowed в самой задаче
    TaskModel? task;
    if (ownerId == 0) {
      task = _my.getTaskByDeskAndId(deskId, taskId);
    } else {
      task = _users.getTaskByDeskAndId(deskId, taskId, ownerId: ownerId);
    }

    if (task != null) {
      final updatedTask = task.copyWith(isFollow: false);
      _updateTask(updatedTask, ownerId, deskId);
    }

    notifyListeners();
  }

  /// Вспомогательный метод для обновления задачи в соответствующем Notifier
  void _updateTask(TaskModel task, int ownerId, int deskId) {
    if (ownerId == 0) {
      _my.updateTask(task, deskId);
    } else {
      _users.updateTask(task, deskId, ownerId);
    }
  }

  /// Обновление (pray)
  TaskModel? pray(int taskId, {required int deskId, required int ownerId}) {
    TaskModel? updated;
    if (ownerId == 0) {
      updated = _my.pray(taskId);
    } else {
      updated = _users.pray(taskId, deskId: deskId, ownerId: ownerId);
    }

    notifyListeners();
    return updated;
  }

  @override
  void dispose() {
    _my.removeListener(_onSourceChanged);
    _users.removeListener(_onSourceChanged);
    super.dispose();
  }

  Status getStatus(int id) {
    return Status.lessDay;
  }
}
