import 'package:test_ex1/domain/domain.dart';

abstract class IFollowedTasksRepository {
  Future<void> addTaskToFollowed(int taskId, int deskId, int userId);
  Future<void> removeTaskFromFollowed(int taskId, int deskId, int userId);
  Future<List<TaskModel>> getFollowedTasks();
  Future<void> prayTask(TaskModel task);
}
