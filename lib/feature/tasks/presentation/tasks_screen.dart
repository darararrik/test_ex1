import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/s.dart';
import 'package:test_ex1/core/domain/models/desk/desk_model.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import 'package:test_ex1/core/util/p.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

@RoutePage()
class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    final notifier = context.currentDeskNotifier;
    final currentDesk = notifier.currentDesk;
    return Scaffold(
      floatingActionButton: context.isMyDesksWrapperRoute
          ? MyFloatingActionButton(onPressed: () => onPressed(currentDesk.id))
          : null,
      body: CustomScrollView(
        physics: currentDesk.tasks.isEmpty
            ? const NeverScrollableScrollPhysics()
            : null,
        slivers: [
          MySliverAppBar(title: Text(currentDesk.title)),
          Visibility(
            visible: currentDesk.tasks.isNotEmpty,
            replacement: EmptyState(message: context.l10n.emptyTasksScreen),
            child: SliverPadding(
              padding: const P(horizontal: S.s16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: currentDesk.tasks.length,
                  (context, index) {
                    final taskCard = currentDesk.tasks[index];
                    return Padding(
                      padding: const P(bottom: S.s12),
                      child: TaskCard(task: taskCard),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPressed(int id) async {
    await showDialog(
      context: context,
      builder: (context) => CreateDialog(
        title: context.l10n.newPrayer,
        hintText: context.l10n.enterTitlePrayer,
        onSubmit: (name) {
          final notifier = DeskListProvider.of(context);
          notifier.addTask(id, name);
        },
      ),
    );
  }
}
