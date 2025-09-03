import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';

part 'my_prayers_bloc.freezed.dart';
part 'my_prayers_event.dart';
part 'my_prayers_state.dart';

class MyPrayersBloc extends Bloc<MyPrayersEvent, MyPrayersState> {
  MyPrayersBloc(this._prayerRepository) : super(const MyPrayersState.empty()) {
    on<_RenamePrayerEvent>(_renameTask);
    on<_CreatePrayerEvent>(_createTask);
    on<_DeletePrayerEvent>(_removeTask);
    on<_GetMyPrayersByDeskIdEvent>(_onGetMyPrayers);
    on<_PrayEvent>(_pray);
  }
  final IPrayerRepository _prayerRepository;

  Future<void> _onGetMyPrayers(
    _GetMyPrayersByDeskIdEvent event,
    Emitter<MyPrayersState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const MyPrayersState.loading());
      }
      final prayers = await _prayerRepository.getPrayersByColumnId(
        columnId: event.columnId,
      );
      if (prayers.isEmpty) {
        emit(const MyPrayersState.empty());
        return;
      }
      emit(MyPrayersState.loaded(prayers: prayers));
    } catch (e) {
      emit(const MyPrayersState.error(message: "Failed to load desks"));
    }
  }

  Future<void> _renameTask(
    _RenamePrayerEvent event,
    Emitter<MyPrayersState> emit,
  ) async {
    try {
      //TODO: INFO: В api нету возможности переименовать молитву

      // emit(const MyPrayersState.loading());
      // await _myDeskRepository.renameTask(e.newTitle, e.taskId, e.deskId);
      // final tasks = await _myDeskRepository.getTasksByDeskId(e.deskId);
      // if (tasks.isEmpty) {
      //   emit(const MyPrayersState.empty());
      //   return;
      // }
      // emit(MyPrayersState.loaded(tasks));
    } catch (e) {
      emit(const MyPrayersState.error(message: "Failed to load desks"));
    }
  }

  Future<void> _createTask(
    _CreatePrayerEvent event,
    Emitter<MyPrayersState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const MyPrayersState.loading());
      }
      await _prayerRepository.createPrayer(
        columnId: event.columnId,
        title: event.title,
      );
      final prayers = await _prayerRepository.getPrayersByColumnId(
        columnId: event.columnId,
      );
      if (prayers.isEmpty) {
        emit(const MyPrayersState.empty());
        return;
      }
      emit(MyPrayersState.loaded(prayers: prayers));
    } catch (e) {
      emit(const MyPrayersState.error(message: "Failed to load desks"));
    }
  }

  Future<void> _removeTask(
    _DeletePrayerEvent event,
    Emitter<MyPrayersState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const MyPrayersState.loading());
      }
      await _prayerRepository.deletePrayer(prayerId: event.prayerId);
      final prayers = await _prayerRepository.getPrayersByColumnId(
        columnId: event.columnId,
      );
      if (prayers.isEmpty) {
        emit(const MyPrayersState.empty());
        return;
      }
      emit(MyPrayersState.loaded(prayers: prayers));
    } catch (e) {
      emit(const MyPrayersState.error(message: "Failed to load desks"));
    }
  }

  FutureOr<void> _pray(_PrayEvent event, Emitter<MyPrayersState> emit) async {
    try {
      if (state is! _LoadedState) {
        emit(const MyPrayersState.loading());
      }
      await _prayerRepository.doPrayer(prayerId: event.prayer.id);
      final prayers = await _prayerRepository.getPrayersByColumnId(
        columnId: event.prayer.columnId,
      );
      if (prayers.isEmpty) {
        emit(const MyPrayersState.empty());
        return;
      }
      emit(MyPrayersState.loaded(prayers: prayers));
    } catch (e) {
      emit(const MyPrayersState.error(message: "Failed to load desks"));
    }
  }
}
