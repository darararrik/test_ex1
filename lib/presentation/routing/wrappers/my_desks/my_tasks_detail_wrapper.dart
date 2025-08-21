// lib/presentation/pages/my_desks/task_detail_page.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_task_detail/my_tasks_detail_bloc.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart';
import 'package:test_ex1/presentation/utils/extensions/build_context_x.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/empty_state.dart';
import 'package:test_ex1/presentation/widgets/layouts/loading_state.dart';
import 'package:test_ex1/presentation/widgets/ui/my_sliver_app_bar.dart';

@RoutePage()
class MyTaskDetailPage extends StatelessWidget {
  const MyTaskDetailPage({
    super.key,
    required this.taskId,
    required this.deskId,
    required this.titleAB,
  });
  final int taskId;
  final int deskId;
  final String titleAB;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MyTasksDetailBloc(context.read())
            ..add(MyTasksDetailEvent.getTaskById(taskId, deskId)),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            MySliverAppBar(title: titleAB),
            BlocBuilder<MyTasksDetailBloc, MyTasksDetailState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const LoadingState(),
                  loaded: (task) => TaskDetailScreen(
                    task: task,
                    onPressedPrayButton: () => handlePrayButtonPressed(
                      context,
                      task,
                      () => context.read<MyTasksDetailBloc>().add(
                        MyTasksDetailEvent.pray(task),
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
      ),
    );
  }
}
