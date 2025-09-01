part of 'my_prayers_bloc.dart';

@freezed
sealed class MyPrayersEvent with _$MyPrayersEvent {
  const factory MyPrayersEvent.getMyPrayersByDeskId({required int columnId}) =
      _GetMyPrayersByDeskIdEvent;
  const factory MyPrayersEvent.renamePrayer({
    required int taskId,
    required int deskId,
    required String newTitle,
  }) = _RenamePrayerEvent;
  const factory MyPrayersEvent.createPrayer({
    required String title,
    required int columnId,
  }) = _CreatePrayerEvent;
  const factory MyPrayersEvent.deletePray({
    required int prayerId,
    required int columnId,
  }) = _DeletePrayerEvent;
  const factory MyPrayersEvent.pray({required PrayerModel prayer}) = _PrayEvent;
}
