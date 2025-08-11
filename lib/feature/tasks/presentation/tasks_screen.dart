import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/s.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/providers.dart';

@RoutePage()
class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    final notifier = DeskListProvider.of(context);
    final currentDesk = notifier.currentDesk;
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) => MyDialog(
              title: context.l10n.newPrayer,
              hintText: context.l10n.enterTitlePrayer,
              onSubmit: (name) {
                final notifier = DeskListProvider.of(context);
                notifier.addTask(currentDesk.id, name);
              },
            ),
          );
        },
      ),
      body: CustomScrollView(
        physics: currentDesk.tasks.isEmpty
            ? const NeverScrollableScrollPhysics()
            : null,

        slivers: [
          MySliverAppBar(title: Text(currentDesk.title)),
          currentDesk.tasks.isNotEmpty
              ? SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: S.s16),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: currentDesk.tasks.length,
                      (context, index) {
                        final taskCard = currentDesk.tasks[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: S.s12),
                          child: TaskCard(task: taskCard),
                        );
                      },
                    ),
                  ),
                )
              : EmptyState(message: context.l10n.emptyTasksScreen),
        ],
      ),
    );
  }
}
