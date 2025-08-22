part of 'user_task_detail_bloc.dart';

@freezed
class UserTaskDetailState with _$UserTaskDetailState {
  const factory UserTaskDetailState.loading() = _LoadingState;
  const factory UserTaskDetailState.loaded(TaskModel task) = _LoadedState;
  const factory UserTaskDetailState.error(String message) = _ErrorState;
}
