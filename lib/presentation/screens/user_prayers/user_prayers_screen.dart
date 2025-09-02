import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/empty_state.dart';
import 'package:test_ex1/presentation/widgets/layouts/error_state.dart';
import 'package:test_ex1/presentation/widgets/layouts/loading_prayers_state.dart';
import 'package:test_ex1/presentation/widgets/layouts/prayers_card_list.dart';
import 'package:test_ex1/presentation/widgets/ui/my_sliver_app_bar.dart';
import 'package:test_ex1/state/blocs/user_prayers/user_prayers_bloc.dart';

@RoutePage()
class UserPrayersScreen extends StatelessWidget {
  const UserPrayersScreen({
    super.key,
    required this.columnId,
    required this.columnTitle,
  });
  final int columnId;
  final String columnTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: columnTitle),
          BlocBuilder<UserPrayersBloc, UserPrayersState>(
            builder: (context, state) {
              return Skeletonizer.sliver(
                enabled: state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
                child: state.when(
                  loading: () => const SliverLoadingPrayersState(),
                  empty: () => SliverEmptyState(
                    message: context.l10n.emptyUserPrayers,
                    iconPath: AppIcons.sketch,
                    needArrow: false,
                  ),
                  error: (message) => const SliverErrorState(),
                  loaded: (prayers) {
                    return SliverPrayersCardList(
                      prayers: prayers,
                      onTapCard: (prayer) => context.pushRoute(
                        UserPrayerDetailRoute(prayer: prayer),
                      ),
                      onPressedPrayButton: (prayer) =>
                          context.handlePray(prayer, () {
                            context.read<UserPrayersBloc>().add(
                              UserPrayersEvent.pray(prayer: prayer),
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
