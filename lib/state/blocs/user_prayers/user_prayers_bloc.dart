import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';

part 'user_prayers_event.dart';
part 'user_prayers_state.dart';
part 'user_prayers_bloc.freezed.dart';

class UserPrayersBloc extends Bloc<UserPrayersEvent, UserPrayersState> {
  UserPrayersBloc(this._prayerRepository)
    : super(const UserPrayersState.empty()) {
    on<_GetPrayersEvent>(_onGetPrayersEvent);
    on<_PrayEvent>(_onPrayEvent);
  }
  final IPrayerRepository _prayerRepository;
  FutureOr<void> _onGetPrayersEvent(
    _GetPrayersEvent event,
    Emitter<UserPrayersState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const UserPrayersState.loading());
      }
      final prayers = await _prayerRepository.getPrayersByColumnId(
        columnId: event.columnId,
      );
      if (prayers.isEmpty) {
        emit(const UserPrayersState.empty());
      } else {
        emit(UserPrayersState.loaded(prayers: prayers));
      }
    } catch (e) {
      emit(UserPrayersState.error(message: e.toString()));
    }
  }

  FutureOr<void> _onPrayEvent(
    _PrayEvent event,
    Emitter<UserPrayersState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const UserPrayersState.loading());
      }
      await _prayerRepository.doPrayer(prayerId: event.prayer.id);
      final prayers = await _prayerRepository.getPrayersByColumnId(
        columnId: event.prayer.columnId,
      );
      if (prayers.isEmpty) {
        emit(const UserPrayersState.empty());
      } else {
        emit(UserPrayersState.loaded(prayers: prayers));
      }
    } catch (e) {
      emit(UserPrayersState.error(message: e.toString()));
    }
  }
}
