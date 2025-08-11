import 'package:flutter/material.dart';

import 'package:test_ex1/core/constants/r.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';

class CapsuleIcon extends StatelessWidget {
  const CapsuleIcon({super.key, required this.status});
  final Status status;

  @override
  Widget build(BuildContext context) {
    final blue = context.appColors.blueIndicator;
    final yellow = context.appColors.yellowIndicator;
    final orange = context.appColors.orangeIndicator;
    return SizedBox(
      width: 24,
      height: 47,
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
