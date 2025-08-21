import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/domain/domain.dart';
import 'package:test_ex1/presentation/widgets/layouts/empty_state.dart';

part 'my_tasks_event.dart';
part 'my_tasks_state.dart';
part 'my_tasks_bloc.freezed.dart';

class MyTasksBloc extends Bloc<MyTasksEvent, MyTasksState> {
  MyTasksBloc(this._myDesksRepository) : super(const _EmptyState()) {
    on<_RenameTaskEvent>(_renameTask);
    on<_CreateTaskEvent>(_createTask);
    on<_RemoveTaskEvent>(_removeTask);
    on<_GetTasksByDeskIdEvent>(_getMyTasks);
    on<_PrayEvent>(_pray);
  }
  final IMyDesksRepository _myDesksRepository;

  Future<void> _getMyTasks(
    _GetTasksByDeskIdEvent event,
    Emitter<MyTasksState> emit,
  ) async {
    try {
      emit(const MyTasksState.loading());
      final tasks = await _myDesksRepository.getTasksByDeskId(event.deskId);
      if (tasks.isEmpty) {
        emit(const MyTasksState.empty());
        return;
      }
      emit(MyTasksState.loaded(tasks));
    } catch (e) {
      emit(const MyTasksState.error("Failed to load desks"));
    }
  }

  Future<void> _renameTask(
    _RenameTaskEvent e,
    Emitter<MyTasksState> emit,
  ) async {
    try {
      emit(const MyTasksState.loading());
      await _myDesksRepository.renameTask(e.newTitle, e.taskId, e.deskId);
      final tasks = await _myDesksRepository.getTasksByDeskId(e.deskId);
      if (tasks.isEmpty) {
        emit(const MyTasksState.empty());
        return;
      }
      emit(MyTasksState.loaded(tasks));
    } catch (e) {
      emit(const MyTasksState.error("Failed to load desks"));
    }
  }

  Future<void> _createTask(
    _CreateTaskEvent e,
    Emitter<MyTasksState> emit,
  ) async {
    try {
      emit(const MyTasksState.loading());
      await _myDesksRepository.addTask(e.title, e.deskId);
      final tasks = await _myDesksRepository.getTasksByDeskId(e.deskId);
      if (tasks.isEmpty) {
        emit(const MyTasksState.empty());
        return;
      }
      emit(MyTasksState.loaded(tasks));
    } catch (e) {
      emit(const MyTasksState.error("Failed to load desks"));
    }
  }

  Future<void> _removeTask(
    _RemoveTaskEvent e,
    Emitter<MyTasksState> emit,
  ) async {
    try {
      emit(const MyTasksState.loading());
      await _myDesksRepository.removeTaskById(e.taskId, e.deskId);
      final tasks = await _myDesksRepository.getTasksByDeskId(e.deskId);
      if (tasks.isEmpty) {
        emit(const MyTasksState.empty());
        return;
      }
      emit(MyTasksState.loaded(tasks));
    } catch (e) {
      emit(const MyTasksState.error("Failed to load desks"));
    }
  }

  FutureOr<void> _pray(_PrayEvent event, Emitter<MyTasksState> emit) async {
    try {
      emit(const MyTasksState.loading());
      await _myDesksRepository.pray(event.task.id, event.task.deskId);
      final tasks = await _myDesksRepository.getTasksByDeskId(
        event.task.deskId,
      );
      if (tasks.isEmpty) {
        emit(const MyTasksState.empty());
        return;
      }
      emit(MyTasksState.loaded(tasks));
    } catch (e) {
      emit(const MyTasksState.error("Failed to load desks"));
    }
  }
}
