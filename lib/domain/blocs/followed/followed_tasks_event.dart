part of 'followed_tasks_bloc.dart';

@freezed
class FollowedTasksEvent with _$FollowedTasksEvent {
  const factory FollowedTasksEvent.getFollowedTasks() = _GetFollowedTasksEvent;
  const factory FollowedTasksEvent.pray(TaskModel task) =
      _PrayFollowedTasksEvent;
  const factory FollowedTasksEvent.subscribe(TaskModel task) = _SubscribeEvent;
  const factory FollowedTasksEvent.unsubscribe(TaskModel task) =
      _UnsubscribeEvent;
}
