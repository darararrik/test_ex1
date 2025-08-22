import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';

part 'followed_detail_event.dart';
part 'followed_detail_state.dart';
part 'followed_detail_bloc.freezed.dart';

class FollowedDetailBloc
    extends Bloc<FollowedDetailEvent, FollowedDetailState> {
  FollowedDetailBloc(this._followedTasksRepository)
    : super(const _LoadingState()) {
    on<FollowedDetailEvent>(
      (event, emit) async => event.map(
        getTaskById: (_GetTaskByIdEvent event) async {
          emit(const _LoadingState());
          try {
            final tasks = await _followedTasksRepository.getFollowedTasks();
            //Мне было лень писать отдельный метод в репозитории и DS
            final task = tasks.firstWhereOrNull(
              (e) =>
                  e.id == event.taskId &&
                  e.userId == event.userId &&
                  e.deskId == event.deskId,
            );
            task != null
                ? emit(FollowedDetailState.loaded(task))
                : emit(const FollowedDetailState.error("Task not found"));
          } catch (error) {
            emit(_ErrorState(error.toString()));
          }
          return null;
        },
        pray: (_PrayEvent event) async {
          emit(const _LoadingState());
          try {
            await _followedTasksRepository.prayTask(event.task);
            final tasks = await _followedTasksRepository.getFollowedTasks();
            //Мне было лень писать отдельный метод в репозитории и DS
            final task = tasks.firstWhereOrNull(
              (e) =>
                  e.id == event.task.id &&
                  e.userId == event.task.userId &&
                  e.deskId == event.task.deskId,
            );
            task != null
                ? emit(FollowedDetailState.loaded(task))
                : emit(const FollowedDetailState.error("Task not found"));
          } catch (error) {
            emit(_ErrorState(error.toString()));
          }
          return null;
        },
      ),
    );
  }
  final IFollowedTasksRepository _followedTasksRepository;
}
