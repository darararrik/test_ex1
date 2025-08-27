import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/blocs.dart';
import 'package:test_ex1/domain/models/column/column_model.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class UserTaskDetailPage extends StatelessWidget {
  const UserTaskDetailPage({super.key, required this.task});
  final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: task.title),
          BlocBuilder<UserTaskDetailBloc, UserTaskDetailState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                loaded: (task) => TaskDetailScreen(
                  task: task,
                  onPressedPrayButton: () => context.handlePray(
                    task,
                    () => context.read<UserTaskDetailBloc>().add(
                      UserTaskDetailEvent.pray(task),
                    ),
                  ),
                ),
                error: (message) => const ErrorState(),
              );
            },
          ),
        ],
      ),
    );
  }
}
