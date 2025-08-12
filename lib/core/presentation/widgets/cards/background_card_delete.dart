import 'package:flutter/material.dart';

import 'package:test_ex1/core/presentation/widgets/ui/app_icon.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/resources/resources.dart';
import '../../../constants/constants.dart';

class BackgroundCardDelete extends StatelessWidget {
  const BackgroundCardDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          color: context.appColors.error,
          borderRadius: BorderRadius.circular(R.r24),
        ),
        alignment: Alignment.centerRight,
        padding: const P(right: 20),
        child: const AppIcon(AppIcons.trash, width: S.s20, height: S.s20),
      ),
    );
  }
}
