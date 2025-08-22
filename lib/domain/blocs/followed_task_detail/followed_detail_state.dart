part of 'followed_detail_bloc.dart';

@freezed
class FollowedDetailState with _$FollowedDetailState {
  const factory FollowedDetailState.loading() = _LoadingState;
  const factory FollowedDetailState.loaded(TaskModel task) = _LoadedState;
  const factory FollowedDetailState.error(String message) = _ErrorState;}
