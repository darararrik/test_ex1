import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/domain/interface/desk_tasks_list.dart';
import 'package:test_ex1/core/domain/models/models.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';

class UsersDesksListNotifier extends ChangeNotifier implements IDesksTasksList {
  final List<DeskModel> _usersDesks = [
    DeskModel(
      id: 1,
      userId: 1,
      title: "Ivan’s desk",
      tasks: [
        TaskModel.createDefault(
          id: 1,
          name: 'For family',
          userId: 1,
          deskId: 1,
        ),
        TaskModel.createDefault(
          id: 2,
          name: 'daaddas',
          lastPray: DateTime.now().subtract(const Duration(hours: 1)),
          userId: 1,
          deskId: 1,
        ),
        TaskModel.createDefault(
          id: 3,
          name: 'For asddas',
          lastPray: DateTime.now().subtract(const Duration(days: 1)),
          userId: 1,
          deskId: 1,
        ),
      ],
    ),
  ];
  int _currentDeskId = -1;
  @override
  Status? getStatus(int id) =>
      getCurrentDesk.tasks.firstWhereOrNull((t) => t.id == id)?.getActualStatus;
  @override
  List<DeskModel> get getDesks => List.unmodifiable(_usersDesks);
  @override
  DeskModel get getCurrentDesk =>
      _usersDesks.firstWhere((d) => d.id == _currentDeskId);
  @override
  TaskModel? getTaskById(int id) =>
      getCurrentDesk.tasks.firstWhereOrNull((t) => t.id == id);

  @override
  void setCurrentDesk(int deskId) {
    if (_usersDesks.any((d) => d.id == deskId)) {
      _currentDeskId = deskId;
      notifyListeners();
    }
  }

  @override
  TaskModel pray(int taskId, {int? deskId, int? ownerId}) {
    final int deskIndex;
    if (deskId != null && ownerId != null) {
      deskIndex = _usersDesks.indexWhere(
        (d) => d.id == deskId && d.userId == ownerId,
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
