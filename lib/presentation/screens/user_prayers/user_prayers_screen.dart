import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/screens/user_prayers_detail/user_prayers_detail_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/empty_state.dart';
import 'package:test_ex1/presentation/widgets/layouts/error_state.dart';
import 'package:test_ex1/presentation/widgets/layouts/loading_state.dart';
import 'package:test_ex1/presentation/widgets/layouts/prayers_card_list.dart';
import 'package:test_ex1/presentation/widgets/ui/first_sliver_app_bar.dart';
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
          FirstSliverAppBar(title: columnTitle),
          BlocBuilder<UserPrayersBloc, UserPrayersState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                empty: () => EmptyState(
                  message: context.l10n.emptyUserPrayers,
                  iconPath: AppIcons.sketch,
                  needArrow: false,
                ),
                error: (message) => const ErrorState(),
                loaded: (prayers) {
                  return PrayersCardList(
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
              );
            },
          ),
        ],
      ),
    );
  }
}
