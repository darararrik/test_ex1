part of 'subscribed_detail_bloc.dart';

@freezed
class SubscribedDetailState with _$SubscribedDetailState {
  const factory SubscribedDetailState.loading() = _LoadingState;
  const factory SubscribedDetailState.loaded({
    required PrayerModel prayer,
    required List<CommentModel> comments,
  }) = _LoadedState;
  const factory SubscribedDetailState.error({required String message}) =
      _ErrorState;
}
