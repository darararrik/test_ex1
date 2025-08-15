import 'package:flutter/material.dart';

import 'package:collection/collection.dart';

import 'package:test_ex1/core/domain/interface/desk_tasks_list.dart';
import 'package:test_ex1/core/domain/models/models.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';

class UsersDesksListNotifier extends ChangeNotifier implements IDesksTasksList {
  final List<DeskModel> _usersDesks = [
    DeskModel(
      id: 1,
      userId: 1,
      title: "Ivan’s Family Desk",
      tasks: [
        TaskModel.createDefault(
          id: 1,
          name: 'Buy groceries',
          userId: 1,
          deskId: 1,
        ),
        TaskModel.createDefault(
          id: 2,
          name: 'Call mom',
          lastPray: DateTime.now().subtract(const Duration(hours: 3)),
          userId: 1,
          deskId: 1,
        ),
        TaskModel.createDefault(
          id: 3,
          name: 'Pay electricity bill',
          lastPray: DateTime.now().subtract(const Duration(days: 2)),
          userId: 1,
          deskId: 1,
        ),
      ],
    ),

    DeskModel(
      id: 2,
      userId: 2,
      title: "John’s Work Desk",
      tasks: [
        TaskModel.createDefault(
          id: 4,
          name: 'Prepare presentation',
          userId: 2,
          deskId: 2,
        ),
        TaskModel.createDefault(
          id: 5,
          name: 'Team meeting',
          lastPray: DateTime.now().subtract(const Duration(hours: 6)),
          userId: 2,
          deskId: 2,
        ),
      ],
    ),
    DeskModel(
      id: 3,
      userId: 1,
      title: "Ivan’s Personal Desk",
      tasks: [
        TaskModel.createDefault(
          id: 6,
          name: 'Read a book',
          userId: 1,
          deskId: 3,
        ),
        TaskModel.createDefault(
          id: 7,
          name: 'Workout',
          lastPray: DateTime.now().subtract(const Duration(hours: 1)),
          userId: 1,
          deskId: 3,
        ),
        TaskModel.createDefault(
          id: 8,
          name: 'Plan weekend trip',
          lastPray: DateTime.now().subtract(const Duration(days: 5)),
          userId: 1,
          deskId: 3,
        ),
      ],
    ),

    DeskModel(
      id: 4,
      userId: 3,
      title: "Anna’s Shared Desk",
      tasks: [
        TaskModel.createDefault(
          id: 9,
          name: 'Decorate office',
          userId: 3,
          deskId: 4,
        ),
      ],
    ),
  ];

  int _currentDeskId = -1;
  @override
  Status? getStatus({required int taskId, int? userId, int? deskId}) =>
      getCurrentDesk?.tasks
          .firstWhereOrNull((t) => t.id == taskId)
          ?.getActualStatus;
  @override
  List<DeskModel> get getDesks => List.unmodifiable(_usersDesks);
  @override
  DeskModel? get getCurrentDesk =>
      _usersDesks.firstWhereOrNull((d) => d.id == _currentDeskId);
  @override
  TaskModel? getTaskById({required int taskId, int? deskId, int? userId}) =>
      getCurrentDesk?.tasks.firstWhereOrNull((t) => t.id == taskId);

  @override
  void setCurrentDesk(int deskId) {
    if (_usersDesks.any((d) => d.id == deskId)) {
      _currentDeskId = deskId;
      notifyListeners();
    }
  }

  @override
  TaskModel pray({required int taskId, int? deskId, int? userId}) {
    final int deskIndex;
    if (deskId != null && userId != null) {
      deskIndex = _usersDesks.indexWhere(
        (d) => d.id == deskId && d.userId == userId,
      );
    } else {
      deskIndex = _usersDesks.indexWhere((d) => d.id == _currentDeskId);
    }
    if (deskIndex == -1) return TaskModel.createEmpty();
    final oldDesk = _usersDesks[deskIndex];
    final taskIndex = oldDesk.tasks.indexWhere((task) => task.id == taskId);

    if (taskIndex == -1) return TaskModel.createEmpty();

    final oldTask = oldDesk.tasks[taskIndex];
    final updatedTask = oldTask.copyWith(
      totalPrayers: oldTask.totalPrayers + 1,
      myPrayers: oldTask.myPrayers + 1,
      lastPray: DateTime.now(),
    );

    final updatedTasks = List<TaskModel>.from(oldDesk.tasks)
      ..[taskIndex] = updatedTask;

    final updatedDesk = oldDesk.copyWith(tasks: updatedTasks);

    _usersDesks[deskIndex] = updatedDesk;
    notifyListeners();
    return updatedTask;
  }

  TaskModel? getTaskByDeskAndId(
    int deskId,
    int taskId, {
    required int ownerId,
  }) {
    try {
      final desk = _usersDesks.firstWhere(
        (d) => d.id == deskId && d.userId == ownerId,
      );
      try {
        return desk.tasks.firstWhere((t) => t.id == taskId);
      } catch (_) {
        return null;
      }
    } catch (_) {
      return null;
    }
  }

  void updateTask(TaskModel updatedTask, int deskId, int ownerId) {
    final deskIndex = _usersDesks.indexWhere(
      (d) => d.id == deskId && d.userId == ownerId,
    );
    if (deskIndex == -1) return;

    final desk = _usersDesks[deskIndex];
    final taskIndex = desk.tasks.indexWhere((t) => t.id == updatedTask.id);
    if (taskIndex == -1) return;

    final updatedTasks = List<TaskModel>.from(desk.tasks)
      ..[taskIndex] = updatedTask;

    _usersDesks[deskIndex] = desk.copyWith(tasks: updatedTasks);

    notifyListeners();
  }
}
