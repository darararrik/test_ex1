import 'package:flutter/material.dart';

import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import '../../constants/constants.dart';

class BackgroundDeleteIcon extends StatelessWidget {
  const BackgroundDeleteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          color: context.appColors.error,
          borderRadius: BorderRadius.circular(R.r24),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const AppIcon(AppIcons.trash, width: S.s20, height: S.s20),
      ),
    );
  }
}
