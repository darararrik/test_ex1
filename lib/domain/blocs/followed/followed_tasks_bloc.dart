import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/dto/followed_task_ref/followed_task_ref_model.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/domain/repositories/followed_tasks_repository.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';

part 'followed_tasks_event.dart';
part 'followed_tasks_state.dart';
part 'followed_tasks_bloc.freezed.dart';

class FollowedTasksBloc extends Bloc<FollowedTasksEvent, FollowedTasksState> {
  FollowedTasksBloc(this._followedTasksRepository)
    : super(const FollowedTasksState.empty()) {
    on<_GetFollowedTasksEvent>(_getFollowedTasks);
    on<_PrayFollowedTasksEvent>(_pray);
    on<_SubscribeEvent>(_addFollowedTask);
    on<_UnsubscribeEvent>(_removeFollowedTask);
  }

  final IFollowedTasksRepository _followedTasksRepository;

  Future<void> _getFollowedTasks(
    _GetFollowedTasksEvent event,
    Emitter<FollowedTasksState> emit,
  ) async {
    emit(const FollowedTasksState.loading());
    try {
      final tasks = await _followedTasksRepository.getFollowedTasks();
      if (tasks.isEmpty) {
        emit(const FollowedTasksState.empty());
      } else {
        emit(FollowedTasksState.loaded(tasks));
      }
    } catch (error) {
      emit(FollowedTasksState.error(error.toString()));
    }
  }

  Future<void> _pray(
    _PrayFollowedTasksEvent event,
    Emitter<FollowedTasksState> emit,
  ) async {
    emit(const FollowedTasksState.loading());
    try {
      await _followedTasksRepository.prayTask(event.task);
      final tasks = await _followedTasksRepository.getFollowedTasks();
      emit(FollowedTasksState.loaded(tasks));
    } catch (error) {
      emit(FollowedTasksState.error(error.toString()));
    }
  }

  Future<void> _addFollowedTask(
    _SubscribeEvent event,
    Emitter<FollowedTasksState> emit,
  ) async {
    emit(const FollowedTasksState.loading());
    try {
      await _followedTasksRepository.addTaskToFollowed(
        event.task.id,
        event.task.deskId,
        event.task.userId,
      );
      final tasks = await _followedTasksRepository.getFollowedTasks();
      if (tasks.isEmpty) {
        emit(const FollowedTasksState.empty());
      } else {
        emit(FollowedTasksState.loaded(tasks));
      }
    } catch (error) {
      emit(FollowedTasksState.error(error.toString()));
    }
  }

  Future<void> _removeFollowedTask(
    _UnsubscribeEvent event,
    Emitter<FollowedTasksState> emit,
  ) async {
    emit(const FollowedTasksState.loading());
    try {
      await _followedTasksRepository.removeTaskFromFollowed(
        event.task.id,
        event.task.deskId,
        event.task.userId,
      );
      final tasks = await _followedTasksRepository.getFollowedTasks();
      if (tasks.isEmpty) {
        emit(const FollowedTasksState.empty());
      } else {
        emit(FollowedTasksState.loaded(tasks));
      }
    } catch (error) {
      emit(FollowedTasksState.error(error.toString()));
    }
  }
}
