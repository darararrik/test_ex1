part of 'my_prayers_detail_bloc.dart';

@freezed
sealed class MyPrayersDetailEvent with _$MyPrayersDetailEvent {
  const factory MyPrayersDetailEvent.getTaskById({required int prayerId}) =
      _GetPrayerById;
  const factory MyPrayersDetailEvent.pray({required PrayerModel prayer}) =
      _PrayEvent;
  const factory MyPrayersDetailEvent.subscribe({required PrayerModel prayer}) =
      _SubscribeEvent;
  const factory MyPrayersDetailEvent.unsubscribe({
    required PrayerModel prayer,
  }) = _UnsubscribeEvent;
}
