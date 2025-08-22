import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/blocs.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/screens/tasks/tasks_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class FollowedPage extends StatelessWidget {
  const FollowedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<MyTasksBloc, MyTasksState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (_) {
                context.followedBloc.add(
                  const FollowedTasksEvent.getFollowedTasks(),
                );
              },
              empty: () {
                context.followedBloc.add(
                  const FollowedTasksEvent.getFollowedTasks(),
                );
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<MyDesksBloc, MyDesksState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (_) {
                context.followedBloc.add(
                  const FollowedTasksEvent.getFollowedTasks(),
                );
              },
              empty: () {
                context.followedBloc.add(
                  const FollowedTasksEvent.getFollowedTasks(),
                );
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            FirstSliverAppBar(title: context.l10n.followed),
            BlocBuilder<FollowedTasksBloc, FollowedTasksState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const LoadingState(),
                  empty: () => EmptyState(
                    message: context.l10n.emptySubscriptions,
                    iconPath: AppIcons.sketch,
                  ),
                  error: (message) => const ErrorState(),
                  loaded: (tasks) {
                    return TasksScreen(
                      tasks: tasks,
                      onTapRoute: (task) => context.pushRoute(
                        FollowedTaskDetailRoute(task: task),
                      ),
                      onPressedPrayButton: (task) =>
                          context.handlePray(task, () {
                            context.read<MyTasksBloc>().add(
                              MyTasksEvent.pray(task),
                            );
                          }),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
