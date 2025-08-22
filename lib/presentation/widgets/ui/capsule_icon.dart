// ignore_for_file: unused_local_variable

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
    return SizedBox(
      width: Sz.s24,
      height: Sz.s48,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(R.r10),
        child: ColoredBox(
          color: task.getActualStatus == Status.lessHour
              ? blue
              : task.getActualStatus == Status.lessDay
              ? yellow
              : orange,
        ),
      ),
    );
  }
}
