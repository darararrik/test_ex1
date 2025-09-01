import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/prayer_detail_screen.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

@RoutePage()
class UserPrayerDetailScreen extends StatelessWidget {
  const UserPrayerDetailScreen({super.key, required this.prayer});
  final PrayerModel prayer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: prayer.title),
          BlocBuilder<UserPrayerDetailBloc, UserPrayerDetailState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                loaded: (prayer) => PrayerDetailBody(
                  prayer: prayer,
                  onPressedPrayButton: () => context.handlePray(
                    prayer,
                    () => context.read<UserPrayerDetailBloc>().add(
                      UserPrayerDetailEvent.pray(prayer: prayer),
                    ),
                  ),
                  onPressedSubscribeButton: () => context
                      .read<UserPrayerDetailBloc>()
                      .add(UserPrayerDetailEvent.subscribe(prayer: prayer)),
                  onPressedUnsubscribeButton: () => context
                      .read<UserPrayerDetailBloc>()
                      .add(UserPrayerDetailEvent.unsubscribe(prayer: prayer)),
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
