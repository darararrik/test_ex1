import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/widgets/my_sliver_app_bar.dart';
import 'package:test_ex1/core/presentation/widgets/task_card.dart';

@RoutePage()
class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: Text("name deck")),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(childCount: 5, (
                context,
                index,
              ) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.s12),
                  child: TaskCard(
                    name: 'name',
                    countMembers: '99+',
                    countComplete: '999+',
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
