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
class SubsPrayerDetailScreen extends StatelessWidget {
  const SubsPrayerDetailScreen({super.key, required this.prayer});
  final PrayerModel prayer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: prayer.title),
          BlocBuilder<SubscribedDetailBloc, SubscribedDetailState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                error: (message) => const ErrorState(),
                loaded: (PrayerModel prayer) => PrayerDetailBody(
                  prayer: prayer,
                  onPressedPrayButton: () => context.handlePray(prayer, () {
                    context.read<SubscribedDetailBloc>().add(
                      SubscribedDetailEvent.pray(prayer: prayer),
                    );
                  }),
                  onPressedSubscribeButton: () => context
                      .read<SubscribedDetailBloc>()
                      .add(SubscribedDetailEvent.subscribe(prayer: prayer)),
                  onPressedUnsubscribeButton: () => context
                      .read<SubscribedDetailBloc>()
                      .add(SubscribedDetailEvent.unsubscribe(prayer: prayer)),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
