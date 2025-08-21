// lib/presentation/pages/my_desks/task_detail_page.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_task_detail/my_tasks_detail_bloc.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart';
import 'package:test_ex1/presentation/screens/tasks/tasks_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/loading_state.dart';

import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class MyTasksWrapper extends StatelessWidget {
  const MyTasksWrapper({
    super.key,
    required this.deskId,
    required this.titleAB,
  });
  final int deskId;
  final String titleAB;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: context.isMyDesksWrapperRoute
          ? CreateUnitFAB(
              onPressed: () async {
                final bloc = context.read<MyTasksBloc>();
                await showDialog(
                  context: context,
                  builder: (context) => CreateDialog(
                    title: context.l10n.newPrayer,
                    hintText: context.l10n.enterTitlePrayer,
                    onSubmit: (name) =>
                        bloc.add(MyTasksEvent.createTask(name, deskId)),
                  ),
                );
              },
            )
          : null,
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: titleAB),
          BlocBuilder<MyTasksBloc, MyTasksState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                loaded: (tasks) => TasksScreen(
                  tasks: tasks,
                  onTap: (int taskId, int deskId, String taskTitle) {
                    context.pushRoute(
                      MyTaskDetailRoute(
                        taskId: taskId,
                        deskId: deskId,
                        titleAB: taskTitle,
                      ),
                    );
                  },
                  onPressedPrayButton: (TaskModel task) => handlePrayButtonPressed(
                    context,
                    task,
                    () => context.read<MyTasksBloc>().add(
                      MyTasksEvent.pray(task),
                    ),
                  ),
                ),
                error: (message) => Center(child: Text(message)),
                empty: () => EmptyState(
                  message: context.l10n.emptyTasksScreen,
                  iconPath: AppIcons.sketch,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
