part of 'my_prayers_detail_bloc.dart';

@freezed
class MyPrayersDetailState with _$MyPrayersDetailState {
  const factory MyPrayersDetailState.loading() = _LoadingState;
  const factory MyPrayersDetailState.loaded({required PrayerModel prayer}) =
      _LoadedState;
  const factory MyPrayersDetailState.error(String message) = _ErrorState;
}
