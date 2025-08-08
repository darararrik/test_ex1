import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppIcon(
          AppIcons.background,
          fit: BoxFit.fitHeight,
          width: double.infinity,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.appColors.gray100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppRounding.r24),
                topRight: Radius.circular(AppRounding.r24),
              ),
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}
