import 'package:flutter/material.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.isEnabled,
    required this.onPressed,
    required this.text,
  });
  final VoidCallback onPressed;
  final String text;
  final bool isEnabled;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith(
          (states) => _resolveBackgroundColor(context, states),
        ),
        foregroundColor: WidgetStateColor.resolveWith(
          (states) => _resolveForegroundColor(context, states),
        ),
      ),

      onPressed: isEnabled ? onPressed : null,
      child: Text(text),
    );
  }

  Color _resolveBackgroundColor(BuildContext context, Set<WidgetState> states) {
    if (states.contains(WidgetState.pressed)) return context.appColors.gray600;
    return context.appColors.gray300;
  }

  Color _resolveForegroundColor(BuildContext context, Set<WidgetState> states) {
    if (states.contains(WidgetState.disabled)) return context.appColors.gray600;
    return context.appColors.gray800;
  }
}
