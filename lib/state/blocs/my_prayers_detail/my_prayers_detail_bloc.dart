import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/dto/prayer/prayer_dto.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/prayer_repository.dart';

part 'my_prayers_detail_event.dart';
part 'my_prayers_detail_state.dart';
part 'my_prayers_detail_bloc.freezed.dart';

class MyPrayersDetailBloc
    extends Bloc<MyPrayersDetailEvent, MyPrayersDetailState> {
  MyPrayersDetailBloc(this._prayerRepository) : super(const _LoadingState()) {
    on<_GetPrayerById>(_onGetPrayer);
    on<_PrayEvent>(_onPray);
    on<_SubscribeEvent>(_subscribePrayer);
    on<_UnsubscribeEvent>(_unsubscribePrayer);
  }

  final IPrayerRepository _prayerRepository;
  FutureOr<void> _onGetPrayer(
    _GetPrayerById event,
    Emitter<MyPrayersDetailState> emit,
  ) async {
    try {
      emit(const MyPrayersDetailState.loading());
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayerId,
      );
      emit(MyPrayersDetailState.loaded(prayer: prayer));
    } catch (e) {
      emit(MyPrayersDetailState.error(e.toString()));
    }
  }

  FutureOr<void> _onPray(
    _PrayEvent event,
    Emitter<MyPrayersDetailState> emit,
  ) async {
    try {
      emit(const MyPrayersDetailState.loading());
      await _prayerRepository.doPrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      emit(MyPrayersDetailState.loaded(prayer: prayer));
    } catch (e) {
      emit(const MyPrayersDetailState.error("Failed to load task"));
    }
  }

  Future<void> _subscribePrayer(
    _SubscribeEvent event,
    Emitter<MyPrayersDetailState> emit,
  ) async {
    emit(const MyPrayersDetailState.loading());
    try {
      await _prayerRepository.subscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      emit(MyPrayersDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(MyPrayersDetailState.error(error.toString()));
    }
  }

  Future<void> _unsubscribePrayer(
    _UnsubscribeEvent event,
    Emitter<MyPrayersDetailState> emit,
  ) async {
    emit(const MyPrayersDetailState.loading());
    try {
      await _prayerRepository.unsubscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      emit(MyPrayersDetailState.loaded(prayer: prayer));
    } catch (error) {
      emit(MyPrayersDetailState.error(error.toString()));
    }
  }
}
