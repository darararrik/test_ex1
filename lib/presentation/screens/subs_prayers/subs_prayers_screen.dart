import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

@RoutePage()
class SubsPrayersScreen extends StatefulWidget {
  const SubsPrayersScreen({super.key});

  @override
  State<SubsPrayersScreen> createState() => _SubsPrayersScreenState();
}

class _SubsPrayersScreenState extends State<SubsPrayersScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SubscribedPrayerBloc>().add(
      const SubscribedPrayerEvent.getSubs(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          FirstSliverAppBar(title: context.l10n.followed),
          BlocBuilder<SubscribedPrayerBloc, SubscribedPrayerState>(
            builder: (context, state) {
              return Skeletonizer.sliver(
                enabled: state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
                child: state.when(
                  loading: () => const SliverLoadingPrayersState(),
                  empty: () => SliverEmptyState(
                    message: context.l10n.emptySubscriptions,
                    iconPath: AppIcons.sketch,
                    needArrow: false,
                  ),
                  error: (message) => const SliverErrorState(),
                  loaded: (prayers) {
                    return SliverPrayersCardList(
                      prayers: prayers,
                      onTapCard: (prayer) => context.pushRoute(
                        SubsPrayerDetailRoute(prayer: prayer),
                      ),
                      onPressedPrayButton: (prayer) =>
                          context.handlePray(prayer, () {
                            context.read<SubscribedPrayerBloc>().add(
                              SubscribedPrayerEvent.pray(prayer: prayer),
                            );
                          }),
                    );
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
