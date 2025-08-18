import 'package:flutter/material.dart';

import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/extensions/build_context_x.dart';

class CapsuleIcon extends StatelessWidget {
  const CapsuleIcon({super.key, required this.task});
  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    final blue = context.appColors.blueIndicator;
    final yellow = context.appColors.yellowIndicator;
    final orange = context.appColors.orangeIndicator;
    final status = context.currentNotifier?.getStatus(
      taskId: task.id,
      deskId: task.deskId,
      userId: task.userId,
    );
    return SizedBox(
      width: Sz.s24,
      height: Sz.s48,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(R.r10),
        child: ColoredBox(
          color: status == Status.lessHour
              ? blue
              : status == Status.lessDay
              ? yellow
              : orange,
        ),
      ),
    );
  }
}
