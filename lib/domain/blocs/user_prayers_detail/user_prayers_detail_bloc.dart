import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/prayer_repository.dart';

part 'user_prayers_detail_event.dart';
part 'user_prayers_detail_state.dart';
part 'user_prayers_detail_bloc.freezed.dart';

class UserPrayerDetailBloc
    extends Bloc<UserPrayerDetailEvent, UserPrayerDetailState> {
  UserPrayerDetailBloc( this._prayerRepository)
    : super(const UserPrayerDetailState.loading()) {
    on<_GetPrayerEvent>(_onGetPrayerEvent);
    on<_PrayEvent>(_onPrayeEvent);
  }
  final IPrayerRepository _prayerRepository;

  FutureOr<void> _onGetPrayerEvent(
    _GetPrayerEvent event,
    Emitter<UserPrayerDetailState> emit,
  ) async {
    emit(const _LoadingState());
    try {
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayerId,
      );
      emit(UserPrayerDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(UserPrayerDetailState.error(message: error.toString()));
    }
  }

  FutureOr<void> _onPrayeEvent(
    _PrayEvent event,
    Emitter<UserPrayerDetailState> emit,
  ) async {
    try {
      final prayer = await _prayerRepository.doPrayer(
        prayerId: event.prayer.id,
      );
      emit(UserPrayerDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(UserPrayerDetailState.error(message: error.toString()));
    }
    return null;
  }
}
