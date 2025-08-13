import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';
import 'widgets/widgets.dart';

@RoutePage()
class TaskDetailScreen extends StatefulWidget {
  const TaskDetailScreen({super.key, required this.task});
  final TaskModel task;
  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  late final TextEditingController _commentController;
  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TaskModel? currentTask;
    final parentRouter = context.router.parent(); // NavBarRoute
    final activeTabName = parentRouter?.current.name;
    if (FollowedWrapperRoute.name == activeTabName) {
      final notifier = context.followedNotifier;
      currentTask = notifier.tasks.firstWhereOrNull(
        (element) =>
            element.id == widget.task.id &&
            element.userId == widget.task.userId &&
            element.deskId == widget.task.deskId,
      );
    } else {
      final notifier = context.currentDeskNotifier;
      currentTask = notifier.getCurrentDesk?.tasks.firstWhereOrNull(
        (element) => element.id == widget.task.id,
      );
    }

    return Scaffold(
      body: Visibility(
        visible: currentTask != null,
        child: CustomScrollView(
          slivers: [
            MySliverAppBar(title: currentTask!.name),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TaskDataAndButtons(task: currentTask),
                    const SizedBox(height: S.s20),
                    Comment(commentController: _commentController),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
