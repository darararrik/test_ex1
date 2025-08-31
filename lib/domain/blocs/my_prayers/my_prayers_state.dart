part of 'my_prayers_bloc.dart';

@freezed
class MyPrayersState with _$MyPrayersState {
  const factory MyPrayersState.loading() = _LoadingState;
  const factory MyPrayersState.loaded({required List<PrayerModel> prayers}) =
      _LoadedState;
  const factory MyPrayersState.error({required String message}) = _ErrorState;
  const factory MyPrayersState.empty() = _EmptyState;
}
