part of 'user_task_detail_bloc.dart';

@freezed
class UserTaskDetailEvent with _$UserTaskDetailEvent {
  const factory UserTaskDetailEvent.getTaskById(
    int taskId,
    int deskId,
    int userId,
  ) = _GetTaskByIdEvent;
  const factory UserTaskDetailEvent.pray(TaskModel task) = _PrayEvent;
}
