import 'package:collection/collection.dart';

import 'package:test_ex1/data/data_source/data_source.dart';
import 'package:test_ex1/data/dto/followed_task_ref/followed_task_ref_dto.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/domain/repositories/followed_tasks_repository.dart';

class FollowedTasksRepositoryImpl implements IFollowedTasksRepository {
  FollowedTasksRepositoryImpl({
    required LocalDSMyDesks localDSMyDesks,
    required LocalDSUsersDesks localDSUsersDesks,
    required LocalDSFollowed localDSFollowed,
  }) : _localDSMyDesks = localDSMyDesks,
       _localDSUsersDesks = localDSUsersDesks,
       _localDSFollowed = localDSFollowed;

  final LocalDSMyDesks _localDSMyDesks;
  final LocalDSUsersDesks _localDSUsersDesks;
  final LocalDSFollowed _localDSFollowed;

  @override
  Future<void> addTaskToFollowed(int taskId, int deskId, int userId) async {
    final ref = FollowedTaskRef(userId: userId, deskId: deskId, taskId: taskId);
    await _localDSFollowed.addTask(ref);
  }

  @override
  Future<void> removeTaskFromFollowed(
    int taskId,
    int deskId,
    int userId,
  ) async {
    final ref = FollowedTaskRef(userId: userId, deskId: deskId, taskId: taskId);
    await _localDSFollowed.removeTask(ref);
  }

  @override
  Future<List<TaskModel>> getFollowedTasks() async {
    final refs = _localDSFollowed.refs;

    final List<TaskModel> tasks = [];
    for (final ref in refs) {
      TaskModel? task;
      if (ref.userId == 0) {
        task = await _localDSMyDesks.getTaskByDeskId(ref.taskId, ref.deskId);
      } else {
        task = await _localDSUsersDesks.getTaskById(
          ref.taskId,
          ref.deskId,
          ref.userId,
        );
      }

      task != null ? tasks.add(task) : null;
    }

    return tasks;
  }

  @override
  Future<void> prayTask(TaskModel task) async {
    if (task.userId == 0) {
      await _localDSMyDesks.pray(task.id, task.deskId);
    } else {
      await _localDSUsersDesks.pray(task.id, task.deskId, task.userId);
    }
  }
}
