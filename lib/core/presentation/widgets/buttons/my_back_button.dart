// Flutter imports:

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/sz.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_icon_button.dart';
import 'package:test_ex1/resources/resources.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MyIconButton(
      onPressed: () => context.pop(),
      iconPath: AppIcons.back,
      width: Sz.s42,
      height: Sz.s42,
    );
  }
}
