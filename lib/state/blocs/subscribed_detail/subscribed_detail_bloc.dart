import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';

part 'subscribed_detail_event.dart';
part 'subscribed_detail_state.dart';
part 'subscribed_detail_bloc.freezed.dart';

class SubscribedDetailBloc
    extends Bloc<SubscribedDetailEvent, SubscribedDetailState> {
  SubscribedDetailBloc(this._prayerRepository) : super(const _LoadingState()) {
    on<_GetPrayerByIdEvent>(_onGetTaskByIdEvent);
    on<_PrayEvent>(_onPray);
    on<_SubscribeEvent>(_subscribePrayer);
    on<_UnsubscribeEvent>(_unsubscribePrayer);
  }
  final IPrayerRepository _prayerRepository;

  Future<void> _onGetTaskByIdEvent(
    _GetPrayerByIdEvent event,
    Emitter<SubscribedDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedDetailState.loading());
      }
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayerId,
      );
      emit(SubscribedDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(SubscribedDetailState.error(message: error.toString()));
    }
  }

  Future<void> _onPray(
    _PrayEvent event,
    Emitter<SubscribedDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedDetailState.loading());
      }
      await _prayerRepository.doPrayer(prayerId: event.prayer.id);
      final prayers = await _prayerRepository.getSubscribedPrayers();
      final prayer = prayers.firstWhere((p) => p.id == event.prayer.id);
      emit(SubscribedDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(SubscribedDetailState.error(message: error.toString()));
    }
  }

  Future<void> _subscribePrayer(
    _SubscribeEvent event,
    Emitter<SubscribedDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedDetailState.loading());
      }
      await _prayerRepository.subscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      emit(SubscribedDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(SubscribedDetailState.error(message: error.toString()));
    }
  }

  Future<void> _unsubscribePrayer(
    _UnsubscribeEvent event,
    Emitter<SubscribedDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedDetailState.loading());
      }
      await _prayerRepository.unsubscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      emit(SubscribedDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(SubscribedDetailState.error(message: error.toString()));
    }
  }
}
