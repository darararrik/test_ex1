abstract interface class IFollowedTasksRepository {
  Future<void> addTaskToFollowed(int taskId);
  Future<void> removeTaskFromFollowed(int taskId);
  Future<List<int>> getFollowedTasks();
}