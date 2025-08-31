part of 'user_prayers_detail_bloc.dart';

@freezed
class UserPrayerDetailEvent with _$UserPrayerDetailEvent {
  const factory UserPrayerDetailEvent.getPrayerById({required int prayerId}) =
      _GetPrayerEvent;
  const factory UserPrayerDetailEvent.pray({required PrayerModel prayer}) =
      _PrayEvent;
}
