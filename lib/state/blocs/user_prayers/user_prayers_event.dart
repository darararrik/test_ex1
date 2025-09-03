part of 'user_prayers_bloc.dart';

@freezed
class UserPrayersEvent with _$UserPrayersEvent {
  const factory UserPrayersEvent.getPrayersByColumnId({required int columnId}) =
      _GetPrayersEvent;
  const factory UserPrayersEvent.pray({required PrayerModel prayer}) =
      _PrayEvent;
}
