import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/dto/prayer/prayer_dto.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/prayer_repository.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';

part 'subscribed_prayer_state.dart';
part 'subscribed_prayer_event.dart';
part 'subscribed_prayer_bloc.freezed.dart';

class SubscribedPrayerBloc
    extends Bloc<SubscribedPrayerEvent, SubscribedPrayerState> {
  SubscribedPrayerBloc(this._prayerRepository)
    : super(const SubscribedPrayerState.empty()) {
    on<_GetFollowedTasksEvent>(_getFollowedTasks);
    on<_PrayFollowedTasksEvent>(_pray);
  }

  final IPrayerRepository _prayerRepository;

  Future<void> _getFollowedTasks(
    _GetFollowedTasksEvent event,
    Emitter<SubscribedPrayerState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedPrayerState.loading());
      }
      final prayers = await _prayerRepository.getSubscribedPrayers();
      if (prayers.isEmpty) {
        emit(const SubscribedPrayerState.empty());
      } else {
        emit(SubscribedPrayerState.loaded(prayers: prayers));
      }
    } catch (error) {
      emit(SubscribedPrayerState.error(message: error.toString()));
    }
  }

  Future<void> _pray(
    _PrayFollowedTasksEvent event,
    Emitter<SubscribedPrayerState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedPrayerState.loading());
      }
      await _prayerRepository.doPrayer(prayerId: event.prayer.id);
      final prayers = await _prayerRepository.getPrayersByColumnId(
        columnId: event.prayer.columnId,
      );
      emit(SubscribedPrayerState.loaded(prayers: prayers));
    } catch (error) {
      emit(SubscribedPrayerState.error(message: error.toString()));
    }
  }
}
