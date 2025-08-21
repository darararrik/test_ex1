part of 'my_tasks_detail_bloc.dart';

@freezed
sealed class MyTasksDetailEvent with _$MyTasksDetailEvent {
  const factory MyTasksDetailEvent.getTaskById(int taskId, int deskId) =
      _GetTaskById;
  const factory MyTasksDetailEvent.pray(TaskModel task) = _PrayEvent;
}
