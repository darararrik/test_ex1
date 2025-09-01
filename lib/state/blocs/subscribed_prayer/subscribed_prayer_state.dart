part of 'subscribed_prayer_bloc.dart';

@freezed
abstract class SubscribedPrayerState with _$SubscribedPrayerState {
  const factory SubscribedPrayerState.empty() = _EmptyState;

  const factory SubscribedPrayerState.loading() = _LoadingState;

  const factory SubscribedPrayerState.loaded({
    required List<PrayerModel> prayers,
  }) = _LoadedState;

  const factory SubscribedPrayerState.error({required String message}) =
      _ErrorState;
}
