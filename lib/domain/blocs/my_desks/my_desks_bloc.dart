// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/data/dto/column/column_dto.dart';
import 'package:test_ex1/data/dto/created_column/created_column_dto.dart';
import 'package:test_ex1/data/dto/desk/desk_dto.dart';

import 'package:test_ex1/domain/domain.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/column_repository.dart';
import 'package:test_ex1/domain/repositories/prayer_repository.dart';

part 'my_desks_bloc.freezed.dart';
part 'my_desks_event.dart';
part 'my_desks_state.dart';

class MyDesksBloc extends Bloc<MyDesksEvent, MyDesksState> {
  MyDesksBloc(this._myDeskRepository, this._columnRepository)
    : super(const _EmptyState()) {
    on<_GetMyColumnsEvent>(_onGetMyColumns);
    on<_RenameColumnEvent>(_onRenameColumn);
    on<_CreateColumnEvent>(_onCreateColumn);
    on<_DeleteColumnEvent>(_onDeleteColumn);
    add(const _GetMyColumnsEvent());
  }
  final IDeskRepository _myDeskRepository;
  final IColumnRepository _columnRepository;
  Future<dynamic> _onGetMyColumns(
    _GetMyColumnsEvent e,
    Emitter<MyDesksState> emit,
  ) async {
    try {
      emit(const MyDesksState.loading());
      final desk = await _myDeskRepository.getMyDesk();
      final columns = await _columnRepository.getColumns(deskId: desk.id);
      if (columns.isEmpty) {
        emit(const MyDesksState.empty());
        return;
      }
      emit(MyDesksState.loaded(columns: columns));
    } catch (e) {
      emit(const MyDesksState.error(message: "Failed to load desks"));
    }
  }

  Future<dynamic> _onRenameColumn(
    _RenameColumnEvent e,
    Emitter<MyDesksState> emit,
  ) async {
    try {
      // emit(const MyDesksState.loading());
      // await _myDesksRepository.renameDesk(e.id, e.newName);
      // final desks = await _myDesksRepository.getDesks();
      // emit(MyDesksState.loaded(desks));
    } catch (e) {
      emit(const MyDesksState.error(message: "Failed to rename desk"));
    }
  }

  Future<dynamic> _onCreateColumn(
    _CreateColumnEvent e,
    Emitter<MyDesksState> emit,
  ) async {
    try {
      emit(const MyDesksState.loading());
      final desk = await _myDeskRepository.getMyDesk();
      await _columnRepository.createColumn(title: e.title);
      final columns = await _columnRepository.getColumns(deskId: desk.id);
      if (columns.isEmpty) {
        emit(const MyDesksState.empty());
        return;
      }
      emit(MyDesksState.loaded(columns: columns));
    } catch (e) {
      emit(const MyDesksState.error(message: "Failed to create desk"));
    }
  }

  Future<dynamic> _onDeleteColumn(
    _DeleteColumnEvent e,
    Emitter<MyDesksState> emit,
  ) async {
    try {
      emit(const MyDesksState.loading());
      final desk = await _myDeskRepository.getMyDesk();
      await _columnRepository.deleteColumnById(columnId: e.id);
      final columns = await _columnRepository.getColumns(deskId: desk.id);
      if (columns.isEmpty) {
        emit(const MyDesksState.empty());
        return;
      }
      emit(MyDesksState.loaded(columns: columns));
    } catch (e) {
      emit(const MyDesksState.error(message: "Failed to remove desk"));
    }
  }
}
