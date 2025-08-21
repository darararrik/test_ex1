part of 'users_desks_bloc.dart';

@freezed
class UsersDesksState with _$UsersDesksState {
  const factory UsersDesksState.loading() = _LoadingState;
  const factory UsersDesksState.empty() = _EmptyState;
  const factory UsersDesksState.error(String message) = _ErrorState;
  const factory UsersDesksState.loaded(List<UsersDesksModel> desks) =
      _LoadedState;
}
