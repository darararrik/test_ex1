import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/constants/s.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/prayer_detail_body.dart';
import 'package:test_ex1/presentation/widgets/layouts/loading_detail_state.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

@RoutePage()
class MyPrayerDetailScreen extends StatelessWidget {
  const MyPrayerDetailScreen({super.key, required this.prayer});
  final PrayerModel prayer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: prayer.title),
          BlocBuilder<MyPrayersDetailBloc, MyPrayersDetailState>(
            builder: (context, state) {
              return Skeletonizer.sliver(
                enabled: state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
                child: state.when(
                  loading: () => const SliverLoadingDetailState(),
                  error: (message) => const SliverErrorState(),
                  loaded: (prayer) => SliverPrayerDetailBody(
                    prayer: prayer,
                    onPressedPrayButton: () => context.handlePray(
                      prayer,
                      () => context.read<MyPrayersDetailBloc>().add(
                        MyPrayersDetailEvent.pray(prayer: prayer),
                      ),
                    ),
                    onPressedSubscribeButton: () => context
                        .read<MyPrayersDetailBloc>()
                        .add(MyPrayersDetailEvent.subscribe(prayer: prayer)),
                    onPressedUnsubscribeButton: () => context
                        .read<MyPrayersDetailBloc>()
                        .add(MyPrayersDetailEvent.unsubscribe(prayer: prayer)),
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
