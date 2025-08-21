part of 'users_desks_bloc.dart';

@freezed
class UsersDesksEvent with _$UsersDesksEvent {
  const factory UsersDesksEvent.getUsersDesks() = _GetUsersDesksEvent;
  // const factory UsersDesksEvent.getDesksByUserId(int userId) =
  //     _GetDesksByUserIdEvent;
  // const factory UsersDesksEvent.getTasksByDeskId(int userId, int deskId) =
  //     _GetTasksByDeskIdEvent;
  // const factory UsersDesksEvent.pray(TaskModel task) = _PrayEvent;
}
