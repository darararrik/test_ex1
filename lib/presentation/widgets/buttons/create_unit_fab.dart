import 'package:flutter/material.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/extensions/build_context_x.dart';
import 'package:test_ex1/presentation/widgets/ui/app_icon.dart';

class CreateUnitFAB extends StatelessWidget {
  const CreateUnitFAB({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(boxShadow: [context.appColors.shadow2]),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: const AppIcon(AppIcons.plus, width: Sz.s24, height: Sz.s24),
      ),
    );
  }
}
