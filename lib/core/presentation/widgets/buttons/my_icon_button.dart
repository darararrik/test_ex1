import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/util/build_context_x.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
    this.color,
    required this.width,
    required this.height,
  });
  final VoidCallback onPressed;
  final String iconPath;
  final Color? color;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [context.appColors.shadow1],
          color: color ?? context.appColors.gray100,
          borderRadius: BorderRadius.circular(AppRounding.r30),
        ),
        child: IconButton(
          icon: AppIcon(iconPath, width: 18, height: 18),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
