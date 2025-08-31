part of 'users_desks_bloc.dart';

@freezed
abstract class UsersDesksEvent with _$UsersDesksEvent {
  const factory UsersDesksEvent.getUsersDesks() = _GetUsersDesks;
}
