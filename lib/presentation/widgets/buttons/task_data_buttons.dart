import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ex1/domain/blocs/followed/followed_tasks_bloc.dart';

import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
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
            BlocBuilder<FollowedTasksBloc, FollowedTasksState>(
              builder: (context, state) {
                final isSubscribed = state.maybeWhen(
                  loaded: (tsk) => tsk.any(
                    (t) =>
                        t.id == task.id &&
                        t.deskId == task.deskId &&
                        t.userId == task.userId,
                  ),
                  orElse: () => false,
                );
                return Visibility(
                  visible: isSubscribed,
                  replacement: SecondaryButton(
                    isEnabled: true,
                    onPressed: () {
                      context.read<FollowedTasksBloc>().add(
                        FollowedTasksEvent.subscribe(task),
                      );
                    },
                    text: context.l10n.follow,
                  ),
                  child: SecondaryButton.icon(
                    isEnabled: true,
                    backgroundColor: Colors.transparent,
                    borderColor: context.appColors.gray600,
                    onPressed: () {
                      context.read<FollowedTasksBloc>().add(
                        FollowedTasksEvent.unsubscribe(task),
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
    );
  }
}
