import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';
import 'package:test_ex1/domain/models/cursor.dart';
import 'package:test_ex1/domain/models/models.dart';

part 'users_desks_event.dart';
part 'users_desks_state.dart';
part 'users_desks_bloc.freezed.dart';

class UsersDesksBloc extends Bloc<UsersDesksEvent, UsersDesksState> {
  UsersDesksBloc(this._deskRepository) : super(const UsersDesksState.empty()) {
    on<_GetUsersDesksEvent>(_onGetUsersDesks);
    on<_LoadMoreEvent>(_onLoadMore);

    add(const UsersDesksEvent.getUsersDesks());
  }

  final IDeskRepository _deskRepository;

  FutureOr<void> _onGetUsersDesks(
    _GetUsersDesksEvent event,
    Emitter<UsersDesksState> emit,
  ) async {
    emit(const UsersDesksState.loading());
    try {
      final res = await _deskRepository.getOtherDesks(limit: 10);
      final desks = res.desksList;

      if (desks.isEmpty) {
        emit(const UsersDesksState.empty());
      } else {
        emit(
          UsersDesksState.loaded(
            desks: desks,
            afterCursor: res.cursor.afterCursor,
            hasMore: res.cursor.afterCursor != null,
          ),
        );
      }
    } catch (e) {
      emit(UsersDesksState.error(message: e.toString()));
    }
  }

  FutureOr<void> _onLoadMore(
    _LoadMoreEvent event,
    Emitter<UsersDesksState> emit,
  ) async {
    final currentState = state;
    if (currentState is _LoadedState) {
      if (currentState.isLoadingMore || !currentState.hasMore) return;

      emit(currentState.copyWith(isLoadingMore: true));

      try {
        final res = await _deskRepository.getOtherDesks(
          limit: 10,
          afterCursor: currentState.afterCursor,
        );
        final newDesks = [...currentState.desks, ...res.desksList];
        emit(
          currentState.copyWith(
            desks: newDesks,
            afterCursor: res.cursor.afterCursor,
            hasMore: res.cursor.afterCursor != null,
            isLoadingMore: false,
          ),
        );
      } catch (e) {
        emit(UsersDesksState.error(message: e.toString()));
      }
    }
  }
}
