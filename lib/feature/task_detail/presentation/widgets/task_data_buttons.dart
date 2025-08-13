import 'package:flutter/material.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/feature/task_detail/presentation/widgets/white_box_text.dart';
import 'package:test_ex1/resources/resources.dart';

class TaskDataAndButtons extends StatefulWidget {
  const TaskDataAndButtons({super.key, required this.task});
  final TaskModel task;

  @override
  State<TaskDataAndButtons> createState() => _TaskDataAndButtonsState();
}

class _TaskDataAndButtonsState extends State<TaskDataAndButtons> {
  @override
  Widget build(BuildContext context) {
    final isFollow = widget.task.isFollow;
    final isSubscribed = ValueNotifier<bool>(isFollow);

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
                          data: widget.task.date.toFormattedString(),
                        ),
                        const SizedBox(width: S.s12),
                        WhiteBoxText(
                          title: context.l10n.totalPrayers,
                          data: widget.task.totalPrayers.toString(),
                        ),
                      ],
                    ),
                    const SizedBox(height: S.s12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WhiteBoxText(
                          title: context.l10n.otherPrayers,
                          data: widget.task.otherPrayers.toString(),
                        ),
                        const SizedBox(width: S.s12),
                        WhiteBoxText(
                          title: context.l10n.myPrayers,
                          data: widget.task.myPrayers.toString(),
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
              onPressed: () => handlePrayButtonPressed(context, widget.task),
              text: context.l10n.prayed,
            ),
            const SizedBox(height: S.s8),
            ValueListenableBuilder(
              valueListenable: isSubscribed,
              builder: (context, value, child) {
                return Visibility(
                  visible: isSubscribed.value,
                  replacement: SecondaryButton(
                    isEnabled: true,
                    onPressed: () {
                      final notifier = context.followedNotifier;
                      isSubscribed.value = true;
                      notifier.subscribeById(
                        widget.task.id,
                        deskId: widget.task.deskId,
                        ownerId: widget.task.userId,
                      );
                    },
                    text: context.l10n.follow,
                  ),
                  child: SecondaryButton.icon(
                    isEnabled: true,
                    onPressed: () {
                      isSubscribed.value = false;
                      final notifier = context.followedNotifier;
                      notifier.unsubscribe(
                        widget.task.id,
                        deskId: widget.task.deskId,
                        ownerId: widget.task.userId,
                      );
                    },
                    text: context.l10n.follow,
                    iconPath: AppIcons.check,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
