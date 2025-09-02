import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/s.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class SliverLoadingPrayersState extends StatelessWidget {
  const SliverLoadingPrayersState({super.key});
  @override
  Widget build(BuildContext context) {
    final examples = List<PrayerModel>.generate(1, (_) => PrayerModel.create());
    return SliverPadding(
      padding: const P(horizontal: S.s16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(childCount: examples.length, (
          context,
          index,
        ) {
          final prayerCard = examples[index];
          return Padding(
            padding: const P(bottom: S.s12),
            child: Skeleton.leaf(
              child: PrayerCard(
                prayer: prayerCard,
                onTapRoute: (_) {},
                onPressed: (_) {},
              ),
            ),
          );
        }),
      ),
    );
  }
}
