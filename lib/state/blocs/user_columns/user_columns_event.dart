part of 'user_columns_bloc.dart';

@freezed
abstract class UserColumnsEvent with _$UserColumnsEvent {
  const factory UserColumnsEvent.getUserColumns({required int deskId}) =
      _GetUserColumns;
}
