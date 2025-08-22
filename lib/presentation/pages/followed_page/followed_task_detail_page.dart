import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/blocs.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class FollowedTaskDetailPage extends StatelessWidget {
  const FollowedTaskDetailPage({super.key, required this.task});
  final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: task.title),
          BlocBuilder<FollowedDetailBloc, FollowedDetailState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                error: (message) => const ErrorState(),
                loaded: (TaskModel task) => TaskDetailScreen(
                  task: task,
                  onPressedPrayButton: () => context.handlePray(task, () {
                    context.read<FollowedDetailBloc>().add(
                      FollowedDetailEvent.pray(task),
                    );
                  }),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
