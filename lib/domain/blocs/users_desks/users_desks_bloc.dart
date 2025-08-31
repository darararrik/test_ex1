import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';
import 'package:test_ex1/domain/models/models.dart';

part 'users_desks_event.dart';
part 'users_desks_state.dart';
part 'users_desks_bloc.freezed.dart';

class UsersDesksBloc extends Bloc<UsersDesksEvent, UsersDesksState> {
  UsersDesksBloc(this._deskRepository) : super(const UsersDesksState.empty()) {
    on<_GetUsersDesks>(_onGetUsersDesks);
  }
  final IDeskRepository _deskRepository;

  FutureOr<void> _onGetUsersDesks(
    _GetUsersDesks event,
    Emitter<UsersDesksState> emit,
  ) async {
    emit(const UsersDesksState.loading());
    try {
      final desks = await _deskRepository.getOtherDesks();
      if (desks.isEmpty) {
        emit(const UsersDesksState.empty());
      } else {
        emit(UsersDesksState.loaded(desks: desks));
      }
    } catch (e) {
      emit(UsersDesksState.error(message: e.toString()));
    }
  }
}
