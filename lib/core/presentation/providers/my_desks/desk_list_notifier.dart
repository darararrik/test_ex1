import 'package:flutter/material.dart';

import 'package:test_ex1/core/domain/interface/desk_tasks_list.dart';
import 'package:test_ex1/core/domain/models/models.dart';

import 'package:collection/collection.dart'; 

class DeskListNotifier extends ChangeNotifier implements IDesksTasksList {
  final List<DeskModel> _desks = [
    DeskModel(
      id: 1,
      userId: 0,
      title: 'example',
      tasks: [
        TaskModel.createDefault(
          id: 1,
          userId: 0,
          deskId: 1,
          name: "name",
          lastPray: DateTime.now().subtract(const Duration(hours: 3)),
        ),
      ],
    ),
  ];
  int _nextDeskId = 0;
  int _nextTaskId = 0;
  int _currentDeskId = 0;
  @override
  DeskModel? get getCurrentDesk =>
      _desks.firstWhereOrNull((d) => d.id == _currentDeskId);

  @override
  Status? getStatus({required int taskId, int? userId, int? deskId}) {
    final desk = getCurrentDesk;
    if (desk == null) return null;
    final task = desk.tasks.firstWhereOrNull((t) => t.id == taskId);
    return task?.getActualStatus;
  }

  @override
  List<DeskModel> get getDesks => List.unmodifiable(_desks);

  @override
  TaskModel? getTaskById({required int taskId, int? deskId, int? userId}) =>
      getCurrentDesk?.tasks.firstWhereOrNull((t) => t.id == taskId);

  @override
  void setCurrentDesk(int deskId) {
    if (_desks.any((d) => d.id == deskId)) {
      _currentDeskId = deskId;
      notifyListeners();
    }
  }

  void addDesk(String title) {
    _desks.add(
      DeskModel(id: _nextDeskId++, title: title, tasks: [], userId: 0),
    );
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
    final newTask = TaskModel.createDefault(
      id: _nextTaskId++,
      name: taskTitle,
      userId: 0,
      deskId: _currentDeskId,
    );

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

  @override
  TaskModel pray({required int taskId, int? deskId, int? userId}) {
    final targetDeskId = deskId ?? _currentDeskId;

    final deskIndex = _desks.indexWhere((d) => d.id == targetDeskId);
    if (deskIndex == -1) return TaskModel.createEmpty();

    final oldDesk = _desks[deskIndex];
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
    _desks[deskIndex] = updatedDesk;

    notifyListeners();
    return updatedTask;
  }

  TaskModel? getTaskByDeskAndId(int deskId, int taskId) {
    final DeskModel? desk = _desks.firstWhereOrNull((e) => e.id == deskId);
    final task = desk?.tasks.firstWhereOrNull((e) => e.id == taskId);
    return task;
  }

  void updateTask(TaskModel updatedTask, int deskId) {
    final deskIndex = _desks.indexWhere((d) => d.id == deskId);
    if (deskIndex == -1) return;

    final desk = _desks[deskIndex];
    final taskIndex = desk.tasks.indexWhere((t) => t.id == updatedTask.id);
    if (taskIndex == -1) return;

    // создаем новую доску с обновленной задачей
    final updatedTasks = List<TaskModel>.from(desk.tasks);
    updatedTasks[taskIndex] = updatedTask;

    _desks[deskIndex] = desk.copyWith(tasks: updatedTasks);

    notifyListeners();
  }
}
