part of 'subscribed_prayer_bloc.dart';

@freezed
class SubscribedPrayerEvent with _$SubscribedPrayerEvent {
  const factory SubscribedPrayerEvent.getSubs() = _GetFollowedTasksEvent;
  const factory SubscribedPrayerEvent.pray({required PrayerModel prayer}) =
      _PrayFollowedTasksEvent;
  const factory SubscribedPrayerEvent.subscribe({required PrayerModel prayer}) =
      _SubscribeEvent;
  const factory SubscribedPrayerEvent.unsubscribe({
    required PrayerModel prayer,
  }) = _UnsubscribeEvent;
}
