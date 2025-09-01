import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/domain/domain.dart';

import 'package:test_ex1/domain/models/column.dart';
import 'package:test_ex1/domain/repositories/column_repository.dart';

part 'user_columns_event.dart';
part 'user_columns_state.dart';
part 'user_columns_bloc.freezed.dart';

class UserColumnsBloc extends Bloc<UserColumnsEvent, UserColumnsState> {
  UserColumnsBloc(this._columnRepository)
    : super(const UserColumnsState.empty()) {
    on<_GetUserColumns>(_getUserColumn);
    
  }
  final IColumnRepository _columnRepository;
  FutureOr<void> _getUserColumn(
    _GetUserColumns event,
    Emitter<UserColumnsState> emit,
  ) async {
    try {
      emit(const UserColumnsState.loading());
      final columns = await _columnRepository.getColumns(deskId: event.deskId);
      if (columns.isEmpty) {
        emit(const UserColumnsState.empty());
      } else {
        emit(UserColumnsState.loaded(columns: columns));
      }
    } catch (_) {
      emit(const UserColumnsState.error(message: 'Error fetch columns'));
    }
  }
}
