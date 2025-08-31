part of 'user_prayers_detail_bloc.dart';

@freezed
class UserPrayerDetailState with _$UserPrayerDetailState {
  const factory UserPrayerDetailState.loading() = _LoadingState;
  const factory UserPrayerDetailState.loaded({required PrayerModel prayer}) =
      _LoadedState;
  const factory UserPrayerDetailState.error({required String message}) =
      _ErrorState;
}
