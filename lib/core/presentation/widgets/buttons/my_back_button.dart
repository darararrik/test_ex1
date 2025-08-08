import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_size.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_icon_button.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MyIconButton(
      onPressed: () => context.pop(),
      iconPath: AppIcons.backIcon,
      width: AppSize.s42,
      height: AppSize.s42,
    );
  }
}
