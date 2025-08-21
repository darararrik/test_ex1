part of 'followed_tasks_bloc.dart';

@freezed
class FollowedTasksEvent with _$FollowedTasksEvent {
  const factory FollowedTasksEvent.getFollowedTasks() = _GetFollowedTasks;
  const factory FollowedTasksEvent.refreshFollowedTasks() = _RefreshFollowedTasks;
  const factory FollowedTasksEvent.addFollowedTask(TaskModel task) = _AddFollowedTask;
  const factory FollowedTasksEvent.removeFollowedTask(TaskModel task) = _RemoveFollowedTask;
}