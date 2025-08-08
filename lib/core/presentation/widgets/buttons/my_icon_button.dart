import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_size.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
    this.backgroundColor,
    required this.width,
    required this.height,
    this.iconColor,
    this.borderRadius,
    this.iconWidth,
    this.iconHeight,
  });
  final VoidCallback onPressed;
  final String iconPath;
  final Color? backgroundColor;
  final Color? iconColor;
  final BorderRadius? borderRadius;
  final double width;
  final double height;
  final double? iconWidth;
  final double? iconHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [context.appColors.shadow1],
          color: backgroundColor ?? context.appColors.gray100,
          borderRadius: borderRadius ?? BorderRadius.circular(AppRounding.r30),
        ),
        child: IconButton(
          icon: AppIcon(
            iconPath,
            width: iconWidth ?? AppSize.s18,
            height: iconHeight ?? AppSize.s18,
            color: iconColor,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
