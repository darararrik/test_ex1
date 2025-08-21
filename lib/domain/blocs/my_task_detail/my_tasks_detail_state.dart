part of 'my_tasks_detail_bloc.dart';

@freezed
class MyTasksDetailState with _$MyTasksDetailState {
  const factory MyTasksDetailState.loading() = _LoadingState;
  const factory MyTasksDetailState.loaded({required TaskModel task}) =
      _LoadedState;
  const factory MyTasksDetailState.error(String message) = _ErrorState;
}
