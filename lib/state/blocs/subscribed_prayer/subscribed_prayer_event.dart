part of 'subscribed_prayer_bloc.dart';

@freezed
class SubscribedPrayerEvent with _$SubscribedPrayerEvent {
  const factory SubscribedPrayerEvent.getSubs() = _GetFollowedTasksEvent;
  const factory SubscribedPrayerEvent.pray({required PrayerModel prayer}) =
      _PrayFollowedTasksEvent;
}
