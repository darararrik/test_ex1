import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/domain/models/task_model.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_floating_action_button.dart';
import 'package:test_ex1/core/presentation/widgets/my_sliver_app_bar.dart';
import 'package:test_ex1/core/presentation/widgets/task_card.dart';

@RoutePage()
class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key, required this.tasksList, required this.title});
  final List<TaskModel> tasksList;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(onPressed: () {}),
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: Text(title)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: tasksList.length,
                (context, index) {
                  final taskCard = tasksList[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.s12),
                    child: TaskCard(task: taskCard),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
