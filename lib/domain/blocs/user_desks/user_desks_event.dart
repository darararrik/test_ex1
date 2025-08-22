part of 'user_desks_bloc.dart';

@freezed
abstract class UserDesksEvent with _$UserDesksEvent {
  const factory UserDesksEvent.getDesksByUserId(int userId) =
      _GetDesksByUserIdEvent;
}
