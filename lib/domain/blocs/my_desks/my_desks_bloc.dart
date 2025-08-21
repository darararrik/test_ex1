import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';

part 'my_desks_bloc.freezed.dart';
part 'my_desks_event.dart';
part 'my_desks_state.dart';

class MyDesksBloc extends Bloc<MyDesksEvent, MyDesksState> {
  MyDesksBloc(this._myDesksRepository) : super(const _EmptyState()) {
    on<_GetMyDesksEvent>(_getMyDesks);
    on<_RenameDeskEvent>(_renameDesk);
    on<_CreateDeskEvent>(_createDesks);
    on<_RemoveDeskEvent>(_removeDesk);
  }
  final IMyDesksRepository _myDesksRepository;

  Future<dynamic> _getMyDesks(
    _GetMyDesksEvent e,
    Emitter<MyDesksState> emit,
  ) async {
    try {
      emit(const MyDesksState.loading());
      final desks = await _myDesksRepository.getDesks();
      if (desks.isEmpty) {
        emit(const MyDesksState.empty());
        return;
      }
      emit(MyDesksState.loaded(desks));
    } catch (e) {
      emit(const MyDesksState.error("Failed to load desks"));
    }
  }

  Future<dynamic> _renameDesk(
    _RenameDeskEvent e,
    Emitter<MyDesksState> emit,
  ) async {
    try {
      emit(const MyDesksState.loading());
      await _myDesksRepository.renameDesk(e.id, e.newName);
      final desks = await _myDesksRepository.getDesks();
      emit(MyDesksState.loaded(desks));
    } catch (e) {
      emit(const MyDesksState.error("Failed to rename desk"));
    }
  }

  Future<dynamic> _createDesks(
    _CreateDeskEvent e,
    Emitter<MyDesksState> emit,
  ) async {
    try {
      emit(const MyDesksState.loading());
      await _myDesksRepository.addDesk(e.title);
      final desks = await _myDesksRepository.getDesks();
      emit(MyDesksState.loaded(desks));
    } catch (e) {
      emit(const MyDesksState.error("Failed to create desk"));
    }
  }

  Future<dynamic> _removeDesk(
    _RemoveDeskEvent e,
    Emitter<MyDesksState> emit,
  ) async {
    try {
      emit(const MyDesksState.loading());
      await _myDesksRepository.removeDeskById(e.id);
      final desks = await _myDesksRepository.getDesks();
      if (desks.isEmpty) {
        emit(const MyDesksState.empty());
        return;
      }
      emit(MyDesksState.loaded(desks));
    } catch (e) {
      emit(const MyDesksState.error("Failed to remove desk"));
    }
  }
}
