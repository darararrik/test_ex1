import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/my_task_detail/my_tasks_detail_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/user_task_detail/user_task_detail_bloc.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class UserTaskDetailPage extends StatelessWidget {
  const UserTaskDetailPage({super.key, required this.task});
  final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: task.title),
          BlocBuilder<UserTaskDetailBloc, UserTaskDetailState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                loaded: (task) => TaskDetailScreen(
                  task: task,
                  onPressedPrayButton: () => handlePrayButtonPressed(
                    context,
                    task,
                    () => context.read<UserTaskDetailBloc>().add(
                      UserTaskDetailEvent.pray(task),
                    ),
                  ),
                ),
                error: (message) =>
                    EmptyState(message: message, iconPath: AppIcons.sketch),
              );
            },
          ),
        ],
      ),
    );
  }
}
