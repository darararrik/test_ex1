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
class MyTasksPage extends StatelessWidget {
  const MyTasksPage({super.key, required this.deskId, required this.titleAB});
  final int deskId;
  final String titleAB;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: context.isMyDesksWrapperRoute
          ? CreateUnitFAB(
              onPressed: () async {
                final bloc = context.read<MyPrayersBloc>();
                await showDialog(
                  context: context,
                  builder: (context) => CreateDialog(
                    title: context.l10n.newPrayer,
                    hintText: context.l10n.enterTitlePrayer,
                    onSubmit: (name) => bloc.add(
                      MyPrayersEvent.createPrayer(
                        title: name,
                        columnId: deskId,
                      ),
                    ),
                  ),
                );
              },
            )
          : null,
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: titleAB),
          BlocBuilder<MyPrayersBloc, MyPrayersState>(
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
                  onTapRoute: (PrayerModel task) {
                    context.pushRoute(MyTaskDetailRoute(prayer: task));
                  },
                  onPressedPrayButton: (prayer) => context.handlePray(
                    prayer,
                    () => context.read<MyPrayersBloc>().add(
                      MyPrayersEvent.pray(prayer: prayer),
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
