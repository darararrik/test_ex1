import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/providers/password_visibility_provider.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/util/build_context_x.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.enabled = true,
    this.usePasswordToggle = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final bool usePasswordToggle;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    final passwordNotifier = PasswordVisibilityProvider.of(context);
    final obscureText = usePasswordToggle
        ? passwordNotifier.obscureText
        : false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Text(
            labelText!,
            style: context.appTextStyle.headline4.copyWith(
              color: context.appColors.gray700,
            ),
          ),
        TextField(
          controller: controller,
          enabled: enabled,
          obscureText: obscureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          onChanged: onChanged,
          style: context.appTextStyle.body2,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: context.appTextStyle.body2.copyWith(
              color: context.appColors.gray600,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: AppSpacing.s12,
            ),
            suffixIcon: usePasswordToggle
                ? IconButton(
                    onPressed: passwordNotifier.toggleVisibility,
                    icon: obscureText
                        ? AppIcon(
                            AppIcons.eyeClose,
                            color: context.appColors.gray600,
                          )
                        : AppIcon(
                            AppIcons.eyeOpen,
                            color: context.appColors.gray800,
                          ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
