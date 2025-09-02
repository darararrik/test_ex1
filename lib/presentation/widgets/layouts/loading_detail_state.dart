import 'package:flutter/material.dart';


import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/s.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class SliverLoadingDetailState extends StatelessWidget {
  const SliverLoadingDetailState({super.key});

  @override
  Widget build(BuildContext context) {
    final example = PrayerModel.create();
    return SliverPadding(
      padding: const P(horizontal: S.s16, vertical: S.s12),
      sliver: SliverList(
        delegate: SliverChildListDelegate.fixed([
          TaskDataAndButtons(
            prayer: example,
            onPressedPrayButton: () {},
            onPressedSubscribeButton: () {},
            onPressedUnsubscribeButton: () {},
          ),
          const SizedBox(height: S.s20),
          Comment(commentController: TextEditingController()),
        ]),
      ),
    );
  }
}
