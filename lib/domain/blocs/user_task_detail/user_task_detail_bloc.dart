import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';

part 'user_task_detail_event.dart';
part 'user_task_detail_state.dart';
part 'user_task_detail_bloc.freezed.dart';

class UserTaskDetailBloc
    extends Bloc<UserTaskDetailEvent, UserTaskDetailState> {
  UserTaskDetailBloc(this._usersDesksRepository)
    : super(const _LoadingState()) {
    on<UserTaskDetailEvent>(
      (event, emit) async => event.map(
        getTaskById: (_GetTaskByIdEvent e) async {
          emit(const _LoadingState());
          try {
            final task = await _usersDesksRepository.getTaskById(
              e.taskId,
              e.deskId,
              e.userId,
            );
            emit(_LoadedState(task));
          } catch (error) {
            emit(_ErrorState(error.toString()));
          }
          return null;
        },
        pray: (_PrayEvent e) async {
          emit(const _LoadingState());
          try {
            await _usersDesksRepository.pray(e.task);
            final task = await _usersDesksRepository.getTaskById(
              e.task.id,
              e.task.deskId,
              e.task.userId,
            );
            emit(_LoadedState(task));
          } catch (error) {
            emit(_ErrorState(error.toString()));
          }
          return null;
        },
      ),
    );
  }
  final IUsersDesksRepository _usersDesksRepository;
}
