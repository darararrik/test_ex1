import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/domain/models/users_desks/users_desks_model.dart';

class UsersDesksLocalDS {
  final List<UsersDesksModel> _usersDesks = [
    UsersDesksModel(
      id: 1,
      userId: 1,
      title: "John's Desks",
      desks: [
        DeskModel(
          id: 1,
          userId: 1,
          title: "Sport Desk",
          tasks: [
            TaskModel.createDefault(
              id: 1,
              title: "Exercise Routine",
              userId: 1,
              deskId: 1,
            ),
            TaskModel.createDefault(
              id: 2,
              title: "Run 5km",
              userId: 1,
              deskId: 1,
            ),
          ],
        ),
        DeskModel(
          id: 2,
          userId: 1,
          title: "Home Desk",
          tasks: [
            TaskModel.createDefault(
              id: 1,
              title: "Clean the House",
              userId: 1,
              deskId: 2,
            ),
          ],
        ),
      ],
    ),
    UsersDesksModel(
      id: 2,
      userId: 2,
      title: "Sam's Desks",
      desks: [
        DeskModel(
          id: 1,
          userId: 2,
          title: "Work Desk",
          tasks: [
            TaskModel.createDefault(
              id: 1,
              title: "Complete Report",
              userId: 2,
              deskId: 1,
            ),
            TaskModel.createDefault(
              id: 2,
              title: "Attend Meeting",
              userId: 2,
              deskId: 1,
            ),
          ],
        ),
        DeskModel(
          id: 2,
          userId: 2,
          title: "Shopping Desk",
          tasks: [
            TaskModel.createDefault(
              id: 1,
              title: "Buy Groceries",
              userId: 2,
              deskId: 2,
            ),
          ],
        ),
      ],
    ),
  ];

  List<UsersDesksModel> get getUsersDesks => List.unmodifiable(_usersDesks);

  Future<List<DeskModel>> getDesksByUserId(int userId) async {
    return _usersDesks
        .where((usersDesks) => usersDesks.userId == userId)
        .expand((usersDesks) => usersDesks.desks)
        .toList();
  }

  Future<List<TaskModel>> getTasksByDeskId(int deskId) async {
    return _usersDesks
        .expand((usersDesks) => usersDesks.desks)
        .firstWhere((desk) => desk.id == deskId)
        .tasks;
  }

  Future<void> pray(int taskId, int deskId, int userId) async {
    final usersDesksIndex = _usersDesks.indexWhere(
      (userDesk) => userDesk.userId == userId,
    );
    if (usersDesksIndex == -1) return;

    final deskIndex = _usersDesks[usersDesksIndex].desks.indexWhere(
      (desk) => desk.id == deskId,
    );
    if (deskIndex == -1) return;

    final taskIndex = _usersDesks[usersDesksIndex].desks[deskIndex].tasks
        .indexWhere((task) => task.id == taskId);
    if (taskIndex == -1) return;

    final oldTask =
        _usersDesks[usersDesksIndex].desks[deskIndex].tasks[taskIndex];

    final updatedTask = oldTask.copyWith(
      totalPrayers: oldTask.totalPrayers + 1,
      myPrayers: oldTask.myPrayers + 1,
      lastPray: DateTime.now(),
    );

    _usersDesks[usersDesksIndex] = _usersDesks[usersDesksIndex].copyWith(
      desks: List<DeskModel>.from(_usersDesks[usersDesksIndex].desks)
        ..[deskIndex] = _usersDesks[usersDesksIndex].desks[deskIndex].copyWith(
          tasks: List<TaskModel>.from(
            _usersDesks[usersDesksIndex].desks[deskIndex].tasks,
          )..[taskIndex] = updatedTask,
        ),
    );
  }
}
