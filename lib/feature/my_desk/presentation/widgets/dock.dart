import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/util/build_context_x.dart';

class Dock extends StatelessWidget {
  const Dock({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.appColors.gray100,
        borderRadius: BorderRadius.circular(AppRounding.r24),
        boxShadow: [context.appColors.shadow1],
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.s24),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Dock Item',
            style: context.appTextStyle.headline1,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
