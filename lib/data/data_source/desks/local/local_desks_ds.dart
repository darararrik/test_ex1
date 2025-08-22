import 'package:collection/collection.dart';

import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';

class LocalDSMyDesks {
  final List<DeskModel> _desks = [];
  int deskIdCounter = 0;
  int taskIdCounter = 0;
  List<DeskModel> get getDesks => List.unmodifiable(_desks);
  Future<List<TaskModel>> getTasksByDeskId(int deskId) async {
    final desk = _desks.firstWhere((desk) => desk.id == deskId);
    return desk.tasks;
  }

  Future<void> addDesk(String title) async {
    final newDesk = DeskModel(
      id: deskIdCounter++,
      title: title,
      userId: 0,
      tasks: [],
    );
    _desks.add(newDesk);
  }

  Future<void> pray(int taskId, int deskId) async {
    final deskIndex = _desks.indexWhere((desk) => desk.id == deskId);
    if (deskIndex == -1) return;

    final oldDesk = _desks[deskIndex];
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

    _desks[deskIndex] = oldDesk.copyWith(tasks: updatedTasks);
  }

  Future<void> addTask(String title, int deskId) async {
    final deskIndex = _desks.indexWhere((d) => d.id == deskId);
    if (deskIndex == -1) return;
    final oldDesk = _desks[deskIndex];

    final newTask = TaskModel.createDefault(
      id: taskIdCounter++,
      userId: 0,
      deskId: deskId,
      title: title,
    );
    final updatedTasks = List<TaskModel>.from(oldDesk.tasks)..add(newTask);
    _desks[deskIndex] = oldDesk.copyWith(tasks: updatedTasks);
  }

  Future<void> removeDesk(int deskId) async {
    _desks.removeWhere((desk) => desk.id == deskId);
  }

  Future<void> removeTaskById(int taskId, int deskId) async {
    final deskIndex = _desks.indexWhere((desk) => desk.id == deskId);
    if (deskIndex == -1) return;
    final oldDesk = _desks[deskIndex];
    final updatedTasks = oldDesk.tasks
        .where((task) => task.id != taskId)
        .toList();
    _desks[deskIndex] = oldDesk.copyWith(tasks: updatedTasks);
  }

  Future<void> renameDesk(int deskId, String newTitle) async {
    final index = _desks.indexWhere((desk) => desk.id == deskId);
    if (index != -1) {
      _desks[index] = _desks[index].copyWith(title: newTitle);
    }
  }

  Future<void> renameTask(String newTitle, int taskId, int deskId) async {
    final deskIndex = _desks.indexWhere((desk) => desk.id == deskId);
    if (deskIndex == -1) return;
    final oldDesk = _desks[deskIndex];
    final taskIndex = oldDesk.tasks.indexWhere((task) => task.id == taskId);
    if (taskIndex == -1) return;

    final oldTask = oldDesk.tasks[taskIndex];
    final updatedTask = oldTask.copyWith(title: newTitle);

    final updatedTasks = List<TaskModel>.from(oldDesk.tasks)
      ..[taskIndex] = updatedTask;

    _desks[deskIndex] = oldDesk.copyWith(tasks: updatedTasks);
  }

  Future<TaskModel?> getTaskByDeskId(int taskId, int deskId) async {
    final desk = _desks.firstWhereOrNull((desk) => desk.id == deskId);
    return desk?.tasks.firstWhereOrNull((task) => task.id == taskId);
  }
}
