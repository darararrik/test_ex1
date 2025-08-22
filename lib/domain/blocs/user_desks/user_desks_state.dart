part of 'user_desks_bloc.dart';

@freezed
class UserDesksState with _$UserDesksState {
  const factory UserDesksState.empty() = _EmptyState;
  const factory UserDesksState.loading() = _LoadingState;
  const factory UserDesksState.loaded(List<DeskModel> desks) = _LoadedState;
  const factory UserDesksState.error(String message) = _ErrorState;
}
