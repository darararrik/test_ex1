import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';
import 'package:test_ex1/data/dto/desks/desks_dto.dart';
import 'package:test_ex1/domain/models/users_desks/users_desks_model.dart';

part 'users_desks_event.dart';
part 'users_desks_state.dart';
part 'users_desks_bloc.freezed.dart';

class UsersDesksBloc extends Bloc<UsersDesksEvent, UsersDesksState> {
  UsersDesksBloc(this._usersDesksRepository) : super(const _EmptyState()) {
    on<_GetUsersDesksEvent>(_getUsersDesks);
  }
  final IUsersDesksRepository _usersDesksRepository;

  // Future<void> _getTasksByDeskId(
  //   _GetTasksByDeskIdEvent e,
  //   Emitter<UsersDesksState> emit,
  // ) async {
  //   emit(const UsersDesksState.loading());
  //   try {
  //     final tasks = await _usersDesksRepository.getTasksByDeskId(e.deskId);
  //     emit(UsersDesksState.loaded(tasks));
  //   } catch (error) {
  //     emit(UsersDesksState.error(error.toString()));
  //   }
  // }

  // Future<void> _getDesksByUserId(
  //   _GetDesksByUserIdEvent e,
  //   Emitter<UsersDesksState> emit,
  // ) async {
  //   emit(const UsersDesksState.loading());
  //   try {
  //     final desks = await _usersDesksRepository.getDesksByUserId(e.userId);
  //     emit(UsersDesksState.loaded(desks));
  //   } catch (error) {
  //     emit(UsersDesksState.error(error.toString()));
  //   }
  // }

  Future<dynamic> _getUsersDesks(
    _GetUsersDesksEvent e,
    Emitter<UsersDesksState> emit,
  ) async {
    emit(const UsersDesksState.loading());
    try {
      final usersDesks = await _usersDesksRepository.getUsersDesks();
      emit(UsersDesksState.loaded(usersDesks));
    } catch (e) {
      emit(UsersDesksState.error(e.toString()));
    }
  }

  // FutureOr<void> _pray(_PrayEvent event, Emitter<UsersDesksState> emit) {
  //   emit(const UsersDesksState.loading());
  //   try {
  //     _usersDesksRepository.pray(event.task);
  //     final tasks = _usersDesksRepository.getTasksByDeskId(event.task.deskId);
  //     emit(UsersDesksState.loaded(tasks));
  //   } catch (e) {
  //     emit(UsersDesksState.error(e.toString()));
  //   }
  // }
}
