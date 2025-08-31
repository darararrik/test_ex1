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
        BlocListener<MyPrayersBloc, MyPrayersState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (_) {
                context.followedBloc.add(const SubscribedPrayerEvent.getSubs());
              },
              empty: () {
                context.followedBloc.add(const SubscribedPrayerEvent.getSubs());
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<MyDesksBloc, MyDesksState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (_) {
                context.followedBloc.add(const SubscribedPrayerEvent.getSubs());
              },
              empty: () {
                context.followedBloc.add(const SubscribedPrayerEvent.getSubs());
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
            BlocBuilder<SubscribedPrayerBloc, SubscribedPrayerState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const LoadingState(),
                  empty: () => EmptyState(
                    message: context.l10n.emptySubscriptions,
                    iconPath: AppIcons.sketch,
                  ),
                  error: (message) => const ErrorState(),
                  loaded: (prayers) {
                    return TasksScreen(
                      prayers: prayers,
                      onTapRoute: (task) => context.pushRoute(
                        FollowedTaskDetailRoute(task: task),
                      ),
                      onPressedPrayButton: (prayer) =>
                          context.handlePray(prayer, () {
                            context.read<SubscribedPrayerBloc>().add(
                              SubscribedPrayerEvent.pray(prayer: prayer),
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
