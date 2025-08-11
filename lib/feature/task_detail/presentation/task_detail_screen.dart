import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';
import 'package:test_ex1/core/presentation/providers/desk_list/providers.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
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
    final notifier = DeskListProvider.of(context);
    final currentTask = notifier.currentDesk.tasks.firstWhere(
      (element) => element.id == widget.task.id,
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: Text(currentTask.name)),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TaskData(task: currentTask),
                  const SizedBox(height: S.s20),
                  Comment(commentController: _commentController),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
