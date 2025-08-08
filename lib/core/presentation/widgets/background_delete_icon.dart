import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_size.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';

class BackgroundDeleteIcon extends StatelessWidget {
  const BackgroundDeleteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          color: context.appColors.error,
          borderRadius: BorderRadius.circular(AppRounding.r24),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: AppIcon(AppIcons.trash, width: AppSize.s20, height: AppSize.s20),
      ),
    );
  }
}
