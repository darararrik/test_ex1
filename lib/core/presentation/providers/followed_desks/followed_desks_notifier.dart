import 'package:flutter/material.dart';

import 'package:test_ex1/core/domain/interface/desk_list.dart';
import 'package:test_ex1/core/domain/interface/task_list.dart';
import 'package:test_ex1/core/domain/models/models.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';

class FollowedListNotifier extends ChangeNotifier implements ITasksList {
  FollowedListNotifier({
    required DeskListNotifier myDeskListNotifier,
    required UsersDesksListNotifier usersDesksNotifier,
  }) : _usersDesksNotifier = usersDesksNotifier,
       _myDeskListNotifier = myDeskListNotifier;
  final DeskListNotifier _myDeskListNotifier;
  final UsersDesksListNotifier _usersDesksNotifier;

  final List<TaskModel> _followedTasks = [];
  List<TaskModel> get tasks => List.unmodifiable(_followedTasks);

  void subscribeToTask(TaskModel task) {
    if (!_followedTasks.any((t) => t.id == task.id)) {
      _followedTasks.add(task);
      notifyListeners();
    }
  }

  void subscribeById(int taskId) {
    TaskModel? task;

    try {
      task = _myDeskListNotifier.getTaskById(taskId);
    } catch (_) {
      try {
        task = _usersDesksNotifier.getTaskById(taskId);
      } catch (_) {
        task = null;
      }
    }

    if (task != null) {
      subscribeToTask(task);
    }
  }

  void unsubscribe(int taskId) {
    _followedTasks.removeWhere((t) => t.id == taskId);
    notifyListeners();
  }

  @override
  Status getStatus(int id) {
    // TODO: implement getStatus
    throw UnimplementedError();
  }

  @override
  TaskModel getTaskById(int id) {
    // TODO: implement getTaskById
    throw UnimplementedError();
  }

  @override
  void pray(int taskId) {
    // TODO: implement pray
  }
}
