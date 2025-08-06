import 'package:flutter/material.dart';
import 'package:test_ex1/core/util/build_context_x.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isEnabled = false,
  });
  final VoidCallback onPressed;
  final String text;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isEnabled ? onPressed : null,

      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(
          context.appTextStyle.body1,
        ),
        foregroundColor: WidgetStateProperty.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return context.appColors.gray600;
          }
          if (states.contains(WidgetState.pressed)) {
            return context.appColors.error;
          }
          return context.appColors.orangeIndicator;
        }),
      ),
      child: Text(text),
    );
  }
}
