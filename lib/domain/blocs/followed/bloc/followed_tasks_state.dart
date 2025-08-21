part of 'followed_tasks_bloc.dart';

@freezed
class FollowedTasksState with _$FollowedTasksState {
  const factory FollowedTasksState.loading() = _LoadingState;
  const factory FollowedTasksState.empty() = _EmptyState;
  const factory FollowedTasksState.error(String message) = _ErrorState;
  const factory FollowedTasksState.loaded(List<TaskModel> tasks) = _LoadedState;
}
