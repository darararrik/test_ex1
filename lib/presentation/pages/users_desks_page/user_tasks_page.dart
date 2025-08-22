import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/my_task_detail/my_tasks_detail_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/user_task_detail/user_task_detail_bloc.dart';
import 'package:test_ex1/domain/blocs/user_tasks/user_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/users_desks/users_desks_bloc.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart';
import 'package:test_ex1/presentation/screens/tasks/tasks_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class UserTasksPage extends StatelessWidget {
  const UserTasksPage({
    super.key,
    required this.deskId,
    required this.userId,
    required this.titleAB,
  });
  final int userId;
  final int deskId;
  final String titleAB;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: titleAB),
          BlocBuilder<UserTasksBloc, UserTasksState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                error: (message) => Center(child: Text(message)),
                empty: () => EmptyState(
                  message: context.l10n.emptyTasksScreen,
                  iconPath: AppIcons.sketch,
                ),
                loaded: (tasks) => TasksScreen(
                  tasks: tasks,
                  onTapRoute: (TaskModel task) {
                    context.pushRoute(UserTaskDetailRoute(task: task));
                  },
                  onPressedPrayButton: (TaskModel task) =>
                      handlePrayButtonPressed(
                        context,
                        task,
                        () => context.read<UserTasksBloc>().add(
                          UserTasksEvent.pray(task),
                        ),
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
