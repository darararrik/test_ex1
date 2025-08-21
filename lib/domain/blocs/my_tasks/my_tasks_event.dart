part of 'my_tasks_bloc.dart';

@freezed
sealed class MyTasksEvent with _$MyTasksEvent {
  const factory MyTasksEvent.getTasksByDeskId(int deskId) =
      _GetTasksByDeskIdEvent;
  const factory MyTasksEvent.renameTask(
    int taskId,
    int deskId,
    String newTitle,
  ) = _RenameTaskEvent;
  const factory MyTasksEvent.createTask(String title, int deskId) =
      _CreateTaskEvent;
  const factory MyTasksEvent.removeTask(int taskId, int deskId) =
      _RemoveTaskEvent;
  const factory MyTasksEvent.pray(TaskModel task) = _PrayEvent;
}
