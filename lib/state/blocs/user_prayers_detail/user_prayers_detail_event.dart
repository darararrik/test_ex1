part of 'user_prayers_detail_bloc.dart';

@freezed
class UserPrayerDetailEvent with _$UserPrayerDetailEvent {
  const factory UserPrayerDetailEvent.getPrayerById({required int prayerId}) =
      _GetPrayerEvent;
  const factory UserPrayerDetailEvent.createComment({
    required int prayerId,
    required String body,
  }) = _CreateCommentEvent;
  const factory UserPrayerDetailEvent.pray({required PrayerModel prayer}) =
      _PrayEvent;
  const factory UserPrayerDetailEvent.subscribe({required PrayerModel prayer}) =
      _SubscribeEvent;
  const factory UserPrayerDetailEvent.unsubscribe({
    required PrayerModel prayer,
  }) = _UnsubscribeEvent;
}
