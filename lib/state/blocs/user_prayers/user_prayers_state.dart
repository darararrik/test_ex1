part of 'user_prayers_bloc.dart';

@freezed
class UserPrayersState with _$UserPrayersState {
  const factory UserPrayersState.empty() = _Empty;
  const factory UserPrayersState.loading() = _LoadingState;
  const factory UserPrayersState.loaded({required List<PrayerModel> prayers}) =
      _LoadedState;
  const factory UserPrayersState.error({required String message}) = _ErrorState;
}
