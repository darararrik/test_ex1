part of 'user_tasks_bloc.dart';

@freezed
class UserTasksState with _$UserTasksState {
  const factory UserTasksState.empty() = _Empty;
  const factory UserTasksState.loading() = _LoadingState;
  const factory UserTasksState.loaded(List<TaskModel> tasks) = _LoadedState;
  const factory UserTasksState.error(String message) = _ErrorState;
}
