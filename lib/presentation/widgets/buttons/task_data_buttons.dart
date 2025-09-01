import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/my_prayers_detail/my_prayers_detail_bloc.dart';
import 'package:test_ex1/state/blocs/subscribed_detail/subscribed_detail_bloc.dart';
import 'package:test_ex1/state/blocs/subscribed_prayer/subscribed_prayer_bloc.dart';

class TaskDataAndButtons extends StatelessWidget {
  const TaskDataAndButtons({
    super.key,
    required this.prayer,
    required this.onPressedPrayButton,
    required this.onPressedSubscribeButton,
    required this.onPressedUnsubscribeButton,
  });

  final PrayerModel prayer;
  final VoidCallback onPressedPrayButton;
  final VoidCallback onPressedSubscribeButton;
  final VoidCallback onPressedUnsubscribeButton;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: context.appColors.gray500),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: S.s16,
        ).copyWith(bottom: S.s24),
        child: Column(
          children: [
            _buildTaskInfo(context),
            const SizedBox(height: S.s12),
            PrimaryButton(
              isEnabled: true,
              onPressed: onPressedPrayButton,
              text: context.l10n.prayed,
            ),
            const SizedBox(height: S.s8),
            Visibility(
              visible: prayer.isSub,
              replacement: SecondaryButton(
                onPressed: onPressedSubscribeButton,
                text: context.l10n.follow,
              ),
              child: SecondaryButton.subscribed(
                backgroundColor: Colors.transparent,
                borderColor: context.appColors.gray600,
                onPressed: onPressedUnsubscribeButton,
                text: context.l10n.follow,
                iconPath: AppIcons.check,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskInfo(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(R.r24),
        image: const DecorationImage(
          image: Svg(AppIcons.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(S.s16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WhiteBoxText(
                  title: context.l10n.date,
                  data: prayer.createdAt.toFormattedString(),
                ),
                const SizedBox(width: S.s12),
                WhiteBoxText(
                  title: context.l10n.totalPrayers,
                  data: prayer.completesCount.toString(),
                ),
              ],
            ),
            const SizedBox(height: S.s12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WhiteBoxText(
                  title: context.l10n.otherPrayers,
                  data: prayer.otherPrayCount.toString(),
                ),
                const SizedBox(width: S.s12),
                WhiteBoxText(
                  title: context.l10n.myPrayers,
                  data: prayer.myPrayCount.toString(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
