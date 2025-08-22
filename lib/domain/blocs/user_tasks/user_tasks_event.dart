part of 'user_tasks_bloc.dart';

@freezed
class UserTasksEvent with _$UserTasksEvent {
  const factory UserTasksEvent.getTasksByDeskId(int userId, int deskId) =
      _GetTasksByDeskIdEvent;
  const factory UserTasksEvent.pray(TaskModel task) = _PrayEvent;
}
