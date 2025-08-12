import 'package:flutter/material.dart';
import 'package:test_ex1/core/domain/interface/desk_tasks_list.dart';
import 'package:test_ex1/core/domain/models/models.dart';

class UsersDesksListNotifier extends ChangeNotifier implements IDesksTasksList {
  final List<DeskModel> _usersDesks = [
    DeskModel(
      id: 1,
      title: "Ivan’s desk",
      tasks: [
        TaskModel.create(id: 1, name: 'For family'),
        TaskModel.create(
          id: 2,
          name: 'For family',
          lastPray: DateTime.now().subtract(const Duration(hours: 1)),
        ),
        TaskModel.create(
          id: 3,
          name: 'For family',
          lastPray: DateTime.now().subtract(const Duration(days: 1)),
        ),
      ],
    ),
  ];
  int _currentDeskId = -1;
  @override
  Status getStatus(int id) =>
      currentDesk.tasks.firstWhere((t) => t.id == id).getActualStatus;
  @override
  List<DeskModel> get desks => List.unmodifiable(_usersDesks);
  @override
  DeskModel get currentDesk =>
      _usersDesks.firstWhere((d) => d.id == _currentDeskId);
  @override
  TaskModel getTaskById(int id) =>
      currentDesk.tasks.firstWhere((t) => t.id == id);

  @override
  void setCurrentDesk(int deskId) {
    if (_usersDesks.any((d) => d.id == deskId)) {
      _currentDeskId = deskId;
      notifyListeners();
    }
  }

  @override
  void pray(int taskId) {
    final deskIndex = _usersDesks.indexWhere((d) => d.id == _currentDeskId);
    if (deskIndex == -1) return;

    final oldDesk = _usersDesks[deskIndex];
    final taskIndex = oldDesk.tasks.indexWhere((task) => task.id == taskId);

    if (taskIndex == -1) return;

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
  }
}
