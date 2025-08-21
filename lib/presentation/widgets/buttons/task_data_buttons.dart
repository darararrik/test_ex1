import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ex1/domain/blocs/followed/bloc/followed_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_task_detail/my_tasks_detail_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/users_desks/users_desks_bloc.dart';

import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class TaskDataAndButtons extends StatelessWidget {
  const TaskDataAndButtons({
    super.key,
    required this.task,
    required this.onPressedPrayButton,
  });
  final TaskModel task;
  final VoidCallback onPressedPrayButton;
  @override
  Widget build(BuildContext context) {
    final isFollow = task.isFollow;
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
              onPressed: onPressedPrayButton,
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
                    onPressed: () {},
                    text: context.l10n.follow,
                  ),
                  child: SecondaryButton.icon(
                    isEnabled: true,
                    backgroundColor: Colors.transparent,
                    borderColor: context.appColors.gray600,
                    onPressed: () {
                      isSubscribed.value = false;

                      if (context.currentWrapperName ==
                          FollowedWrapperRoute.name) {
                        context.pop();
                      }
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
