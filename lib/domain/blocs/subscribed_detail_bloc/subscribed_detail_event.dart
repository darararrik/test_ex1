part of 'subscribed_detail_bloc.dart';

@freezed
class SubscribedDetailEvent with _$SubscribedDetailEvent {
  const factory SubscribedDetailEvent.getTaskById({required int prayerId}) =
      _GetPrayerByIdEvent;
  const factory SubscribedDetailEvent.pray({required PrayerModel prayer}) =
      _PrayEvent;
}
