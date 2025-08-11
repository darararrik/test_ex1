import 'package:flutter/material.dart';

import 'package:test_ex1/core/presentation/widgets/buttons/my_text_button.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';

class UnderButtonText extends StatelessWidget {
  const UnderButtonText({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  });
  final String text;
  final String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: context.appTextStyle.body2.copyWith(
            color: context.appColors.gray700,
          ),
        ),
        MyTextButton(onPressed: onPressed, isEnabled: true, text: buttonText),
      ],
    );
  }
}
