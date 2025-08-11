import 'package:flutter/material.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/feature/task_detail/presentation/widgets/white_box_text.dart';

class TaskData extends StatelessWidget {
  const TaskData({super.key, required this.task});
  final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: context.appColors.gray500),
        ),
      ),
      child: Padding(
        padding: const P(horizontal: S.s16, bottom: S.s24),
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(R.r24),
                image: const DecorationImage(
                  image: Svg(AppIcons.background),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const P(all: S.s16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WhiteBoxText(
                          title: context.l10n.date,
                          data: task.date.toFormattedString(),
                        ),
                        const SizedBox(width: S.s12),
                        WhiteBoxText(
                          title: context.l10n.totalPrayers,
                          data: task.totalPrayers.toString(),
                        ),
                      ],
                    ),
                    const SizedBox(height: S.s12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WhiteBoxText(
                          title: context.l10n.otherPrayers,
                          data: task.otherPrayers.toString(),
                        ),
                        const SizedBox(width: S.s12),
                        WhiteBoxText(
                          title: context.l10n.myPrayers,
                          data: task.myPrayers.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: S.s12),
            PrimaryButton(
              isEnabled: true,
              onPressed: () {},
              text: context.l10n.prayed,
            ),
            const SizedBox(height: S.s8),
            SecondaryButton(
              isEnabled: false,
              onPressed: () {},
              text: context.l10n.follow,
            ),
          ],
        ),
      ),
    );
  }
}
