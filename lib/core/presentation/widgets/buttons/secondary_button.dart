import 'package:flutter/material.dart';
import 'package:test_ex1/core/presentation/widgets/ui/app_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.isEnabled,
    required this.onPressed,
    required this.text,
    this.iconPath,
    this.borderColor,
    this.backgroundColor,
    this.foregroundColor,
  });

  factory SecondaryButton.icon({
    required String text,
    required String iconPath,
    required VoidCallback onPressed,
    bool isEnabled = true,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? borderColor,
  }) {
    return SecondaryButton(
      text: text,
      iconPath: iconPath,
      onPressed: onPressed,
      isEnabled: isEnabled,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      borderColor: borderColor,
    );
  }

  final VoidCallback onPressed;
  final String text;
  final bool isEnabled;
  final String? iconPath;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith(
          (states) =>
              backgroundColor ?? _resolveBackgroundColor(context, states),
        ),
        foregroundColor: WidgetStateColor.resolveWith(
          (states) =>
              foregroundColor ?? _resolveForegroundColor(context, states),
        ),
        side: WidgetStatePropertyAll(
          borderColor != null
              ? BorderSide(color: borderColor!)
              : BorderSide.none,
        ),
      ),
      onPressed: isEnabled ? onPressed : null,
      child: iconPath != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppIcon(iconPath!, width: 20),
                const SizedBox(width: 8),
                Text(text),
              ],
            )
          : Text(text),
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
