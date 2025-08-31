import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/blocs.dart';
import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart';
import 'package:test_ex1/presentation/screens/tasks/tasks_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class UserTasksPage extends StatelessWidget {
  const UserTasksPage({
    super.key,
    required this.titleAB,
    required this.columnId,
  });
  final String titleAB;
  final int columnId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: titleAB),
          BlocBuilder<UserPrayersBloc, UserPrayersState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                error: (message) => const ErrorState(),
                empty: () => EmptyState(
                  message: context.l10n.emptyTasksScreen,
                  iconPath: AppIcons.sketch,
                ),
                loaded: (prayers) => TasksScreen(
                  prayers: prayers,
                  onTapRoute: (PrayerModel prayer) {
                    context.pushRoute(UserTaskDetailRoute(prayer: prayer));
                  },
                  onPressedPrayButton: (PrayerModel prayer) =>
                      context.handlePray(
                        prayer,
                        () => context.read<UserPrayersBloc>().add(
                          UserPrayersEvent.pray(prayer: prayer),
                        ),
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
