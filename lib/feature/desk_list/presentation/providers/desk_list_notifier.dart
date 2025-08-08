import 'package:flutter/material.dart';
import 'package:test_ex1/core/domain/models/desk/desk_model.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';

class DeskListNotifier extends ChangeNotifier {
  final List<DeskModel> _desks = [];
  int _nextDeskId = 1;
  int _nextTaskId = 1;

  List<DeskModel> get desks => List.unmodifiable(_desks);
  int _currentDeskId = -1;
  DeskModel get currentDesk => _desks.firstWhere((d) => d.id == _currentDeskId);
  TaskModel getTaskById(int id) =>
      currentDesk.tasks.firstWhere((t) => t.id == id);

  void setCurrentDesk(int deskId) {
    if (_desks.any((d) => d.id == deskId)) {
      _currentDeskId = deskId;
      notifyListeners();
    }
  }

  void addDesk(String title) {
    _desks.add(DeskModel(id: _nextDeskId++, title: title, tasks: []));
    notifyListeners();
  }

  void deleteDeskbyId(int id) {
    _desks.removeWhere((desk) => id == desk.id);
    notifyListeners();
  }

  void deleteTaskById(int id) {
    final deskIndex = _desks.indexWhere((d) => d.id == _currentDeskId);
    if (deskIndex == -1) return;

    final oldDesk = _desks[deskIndex];
    final updatedTasks = oldDesk.tasks.where((task) => task.id != id).toList();
    final updatedDesk = oldDesk.copyWith(tasks: updatedTasks);
    _desks[deskIndex] = updatedDesk;
    notifyListeners();
  }

  void addTask(int deskId, String taskTitle) {
    final deskIndex = _desks.indexWhere((d) => d.id == deskId);
    if (deskIndex == -1) return;

    final oldDesk = _desks[deskIndex];
    final newTask = TaskModel.create(_nextTaskId++, taskTitle);

    final updatedTasks = List<TaskModel>.from(oldDesk.tasks)..add(newTask);
    final updatedDesk = oldDesk.copyWith(tasks: updatedTasks);

    _desks[deskIndex] = updatedDesk;
    notifyListeners();
  }

  void updateDeskTitle(int id, String newTitle) {
    final index = _desks.indexWhere((desk) => desk.id == id);
    if (index != -1) {
      final oldDesk = _desks[index];
      _desks[index] = oldDesk.copyWith(title: newTitle);
      notifyListeners();
    }
  }

  void updateTaskTitle(int id, String newName) {
    final deskIndex = _desks.indexWhere((d) => d.id == _currentDeskId);
    if (deskIndex == -1) return;

    final oldDesk = _desks[deskIndex];
    final taskIndex = oldDesk.tasks.indexWhere((task) => task.id == id);

    if (taskIndex == -1) return;

    final oldTask = oldDesk.tasks[taskIndex];
    final updatedTask = oldTask.copyWith(name: newName);

    final updatedTasks = List<TaskModel>.from(oldDesk.tasks)
      ..[taskIndex] = updatedTask;

    final updatedDesk = oldDesk.copyWith(tasks: updatedTasks);

    _desks[deskIndex] = updatedDesk;
    notifyListeners();
  }
}
