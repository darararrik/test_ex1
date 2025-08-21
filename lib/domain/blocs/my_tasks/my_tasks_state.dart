part of 'my_tasks_bloc.dart';

@freezed
class MyTasksState with _$MyTasksState {
  const factory MyTasksState.loading() = _LoadingState;
  const factory MyTasksState.loaded(List<TaskModel> tasks) = _LoadedState;
  const factory MyTasksState.error(String message) = _ErrorState;
  const factory MyTasksState.empty() = _EmptyState;
}
