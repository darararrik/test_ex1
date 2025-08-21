import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';

import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/old-providers/providers.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/loading_state.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    super.key,
    required this.tasks,
    required this.onTap,
    required this.onPressedPrayButton,
  });
  final void Function(int taskId, int deskId, String taskTitle) onTap;
  final Function(TaskModel task) onPressedPrayButton;
  final List<TaskModel> tasks;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const P(horizontal: S.s16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(childCount: tasks.length, (
          context,
          index,
        ) {
          final taskCard = tasks[index];
          return Padding(
            padding: const P(bottom: S.s12),
            child: TaskCard(task: taskCard, onTap: onTap, onPressed: onPressedPrayButton),
          );
        }),
      ),
    );
  }
}
