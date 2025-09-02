import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/loading_state.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/my_prayers/my_prayers_bloc.dart';

class SliverPrayersCardList extends StatelessWidget {
  const SliverPrayersCardList({
    super.key,
    required this.prayers,
    required this.onTapCard,
    required this.onPressedPrayButton,
  });
  final void Function(PrayerModel prayer) onTapCard;
  final Function(PrayerModel prayer) onPressedPrayButton;
  final List<PrayerModel> prayers;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const P(horizontal: S.s16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(childCount: prayers.length, (
          context,
          index,
        ) {
          final prayerCard = prayers[index];
          return Padding(
            padding: const P(bottom: S.s12),
            child: PrayerCard(
              prayer: prayerCard,
              onTapRoute: onTapCard,
              onPressed: onPressedPrayButton,
            ),
          );
        }),
      ),
    );
  }
}
