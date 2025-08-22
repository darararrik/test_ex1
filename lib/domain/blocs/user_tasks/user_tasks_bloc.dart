import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';

part 'user_tasks_event.dart';
part 'user_tasks_state.dart';
part 'user_tasks_bloc.freezed.dart';

class UserTasksBloc extends Bloc<UserTasksEvent, UserTasksState> {
  UserTasksBloc(this._usersDesksRepository) : super(const _LoadingState()) {
    on<UserTasksEvent>(
      (event, emit) async => event.map(
        getTasksByDeskId: (_GetTasksByDeskIdEvent e) async {
          try {
            emit(const UserTasksState.loading());
            final tasks = await _usersDesksRepository.getTasksByDeskId(
              e.deskId,
              e.userId,
            );
            emit(UserTasksState.loaded(tasks));
          } catch (e) {
            emit(UserTasksState.error(e.toString()));
          }
          return null;
        },
        pray: (_PrayEvent e) async {
          emit(const UserTasksState.loading());
          try {
            await _usersDesksRepository.pray(e.task);
            final tasks = await _usersDesksRepository.getTasksByDeskId(
              e.task.deskId,
              e.task.userId,
            );
            emit(UserTasksState.loaded(tasks));
          } catch (e) {
            emit(UserTasksState.error(e.toString()));
          }
          return null;
        },
      ),
    );
  }
  final IUsersDesksRepository _usersDesksRepository;
}
