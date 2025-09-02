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
  UserPrayerDetailBloc(this._prayerRepository)
    : super(const UserPrayerDetailState.loading()) {
    on<_GetPrayerEvent>(_onGetPrayerEvent);
    on<_PrayEvent>(_onDoPrayerEvent);
    on<_SubscribeEvent>(_subscribePrayer);
    on<_UnsubscribeEvent>(_unsubscribePrayer);
  }
  final IPrayerRepository _prayerRepository;

  FutureOr<void> _onGetPrayerEvent(
    _GetPrayerEvent event,
    Emitter<UserPrayerDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const UserPrayerDetailState.loading());
      }
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayerId,
      );
      emit(UserPrayerDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(UserPrayerDetailState.error(message: error.toString()));
    }
  }

  FutureOr<void> _onDoPrayerEvent(
    _PrayEvent event,
    Emitter<UserPrayerDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const UserPrayerDetailState.loading());
      }
      final prayer = await _prayerRepository.doPrayer(
        prayerId: event.prayer.id,
      );

      emit(UserPrayerDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(UserPrayerDetailState.error(message: error.toString()));
    }
    return null;
  }

  Future<void> _subscribePrayer(
    _SubscribeEvent event,
    Emitter<UserPrayerDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const UserPrayerDetailState.loading());
      }
      await _prayerRepository.subscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      emit(UserPrayerDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(UserPrayerDetailState.error(message: error.toString()));
    }
  }

  Future<void> _unsubscribePrayer(
    _UnsubscribeEvent event,
    Emitter<UserPrayerDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const UserPrayerDetailState.loading());
      }
      await _prayerRepository.unsubscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      emit(UserPrayerDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(UserPrayerDetailState.error(message: error.toString()));
    }
  }
}
