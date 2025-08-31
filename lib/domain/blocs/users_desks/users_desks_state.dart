part of 'users_desks_bloc.dart';

@freezed
class UsersDesksState with _$UsersDesksState {
  const factory UsersDesksState.empty() = _EmptyState;
  const factory UsersDesksState.loading() = _LoadingState;
  const factory UsersDesksState.loaded({required List<DeskModel> desks}) =
      _LoadedState;
  const factory UsersDesksState.error({required String message}) = _ErrorState;
}
