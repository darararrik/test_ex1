import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/models/task/task_model.dart';

part 'followed_tasks_event.dart';
part 'followed_tasks_state.dart';
part 'followed_tasks_bloc.freezed.dart';

class FollowedTasksBloc extends Bloc<FollowedTasksEvent, FollowedTasksState> {
  FollowedTasksBloc() : super(const _EmptyState()) {
    on<FollowedTasksEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
