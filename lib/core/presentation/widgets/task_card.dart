import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_size.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/domain/models/task_model.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_icon_button.dart';
import 'package:test_ex1/core/presentation/widgets/capsule_icon.dart';
import 'package:test_ex1/core/util/build_context_x.dart';
import 'package:test_ex1/core/util/int_x.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.task});
  final TaskModel task;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  late final String countMembers;
  late final String countComplete;
  @override
  void initState() {
    super.initState();
    countMembers = widget.task.members.resolveCountMembers();
    countComplete = widget.task.complete.resolveCountComplete();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(TaskDetailRoute(task: widget.task)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRounding.r24),
          color: context.appColors.gray100,
          boxShadow: [context.appColors.shadow1],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s24,
            vertical: AppSpacing.s24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CapsuleIcon(status: widget.task.status),
                  const SizedBox(width: AppSpacing.s12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.task.name,
                        style: context.appTextStyle.headline2,
                      ),
                      const SizedBox(width: AppSpacing.s2),
                      Row(
                        children: [
                          _Text(
                            text: context.l10n.members,
                            count: countMembers,
                          ),
                          const SizedBox(width: AppSpacing.s12),
                          _Text(
                            text: context.l10n.complete,
                            count: countComplete,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              MyIconButton(
                onPressed: () {
                  //TODO: Сделать молитву
                },
                iconPath: AppIcons.prayArms,
                backgroundColor: context.appColors.gray300,
                width: AppSize.s46,
                height: AppSize.s46,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Text extends StatelessWidget {
  final String count;
  final String text;
  const _Text({required this.count, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: context.appTextStyle.body4.copyWith(
            color: context.appColors.gray700,
          ),
        ),
        const SizedBox(width: AppSpacing.s4),
        Text(count, style: context.appTextStyle.body3),
      ],
    );
  }
}
