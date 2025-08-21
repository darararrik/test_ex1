import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';

part 'my_tasks_detail_event.dart';
part 'my_tasks_detail_state.dart';
part 'my_tasks_detail_bloc.freezed.dart';

class MyTasksDetailBloc extends Bloc<MyTasksDetailEvent, MyTasksDetailState> {
  MyTasksDetailBloc(this._myDesksRepository) : super(const _LoadingState()) {
    on<_GetTaskById>(_onGetTask);
    on<_PrayEvent>(_onPray);
  }

  FutureOr<void> _onGetTask(
    _GetTaskById event,
    Emitter<MyTasksDetailState> emit,
  ) async {
    try {
      emit(const MyTasksDetailState.loading());
      final task = await _myDesksRepository.getTaskById(
        event.taskId,
        event.deskId,
      );
      emit(MyTasksDetailState.loaded(task: task));
    } catch (e) {
      emit(MyTasksDetailState.error(e.toString()));
    }
  }

  final IMyDesksRepository _myDesksRepository;

  FutureOr<void> _onPray(
    _PrayEvent event,
    Emitter<MyTasksDetailState> emit,
  ) async {
    try {
      emit(const MyTasksDetailState.loading());
      await _myDesksRepository.pray(event.task.id, event.task.deskId);
      final task = await _myDesksRepository.getTaskById(
        event.task.id,
        event.task.deskId,
      );
      emit(MyTasksDetailState.loaded(task: task));
    } catch (e) {
      emit(const MyTasksDetailState.error("Failed to load task"));
    }
  }
}
