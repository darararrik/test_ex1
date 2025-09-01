import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/prayer_detail_screen.dart';
import 'package:test_ex1/presentation/widgets/layouts/prayers_card_list.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

@RoutePage()
class MyPrayersScreen extends StatelessWidget {
  const MyPrayersScreen({
    super.key,
    required this.columnId,
    required this.columnTitle,
  });
  final int columnId;
  final String columnTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CreateUnitFAB(
        onPressed: () async {
          final bloc = context.read<MyPrayersBloc>();
          await showDialog(
            context: context,
            builder: (context) => CreateDialog(
              title: context.l10n.newPrayer,
              hintText: context.l10n.enterTitlePrayer,
              onSubmit: (name) => bloc.add(
                MyPrayersEvent.createPrayer(title: name, columnId: columnId),
              ),
            ),
          );
        },
      ),
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: columnTitle),
          BlocBuilder<MyPrayersBloc, MyPrayersState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                error: (message) => const ErrorState(),
                empty: () => EmptyState(
                  message: context.l10n.emptyTasksScreen,
                  iconPath: AppIcons.sketch,
                ),
                loaded: (prayers) => PrayersCardList(
                  prayers: prayers,
                  onTapCard: (PrayerModel prayer) {
                    context.pushRoute(MyPrayerDetailRoute(prayer: prayer));
                  },
                  onPressedPrayButton: (prayer) {
                    context.handlePray(prayer, () {
                      context.read<MyPrayersBloc>().add(
                        MyPrayersEvent.pray(prayer: prayer),
                      );
                    });
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
