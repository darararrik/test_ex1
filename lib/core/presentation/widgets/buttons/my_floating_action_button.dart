import 'package:flutter/material.dart';

import 'package:test_ex1/core/presentation/widgets/ui/app_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import 'package:test_ex1/resources/resources.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(boxShadow: [context.appColors.shadow2]),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: const AppIcon(AppIcons.plus, width: 24, height: 24),
      ),
    );
  }
}
