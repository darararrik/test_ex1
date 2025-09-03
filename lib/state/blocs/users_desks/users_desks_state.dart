part of 'users_desks_bloc.dart';

@freezed
class UsersDesksState with _$UsersDesksState {
  const factory UsersDesksState.loading() = _LoadingState;
  const factory UsersDesksState.error({required String message}) = _ErrorState;
  const factory UsersDesksState.loaded({
    required List<DeskModel> desks,
    required String? afterCursor,
    @Default(false) bool isLoadingMore,
    @Default(true) bool hasMore,
  }) = _LoadedState;
  const factory UsersDesksState.empty() = _EmptyState;
}
