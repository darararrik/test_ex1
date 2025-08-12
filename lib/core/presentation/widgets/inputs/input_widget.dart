import 'package:flutter/material.dart';

import 'package:test_ex1/core/constants/s.dart';
import 'package:test_ex1/core/presentation/providers/password_visibility/password_visibility_provider.dart';
import 'package:test_ex1/core/presentation/widgets/ui/app_icon.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/resources/resources.dart';

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
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.filled,
    this.fillColor,
    this.contentPadding,
    this.validator,
  });
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final bool usePasswordToggle;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final bool? filled;
  final Color? fillColor;
  final EdgeInsets? contentPadding;
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
        TextFormField(
          controller: controller,
          enabled: enabled,
          obscureText: obscureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          onChanged: onChanged,
          style: context.appTextStyle.body2,
          validator: validator,

          decoration: InputDecoration(
            filled: filled,
            fillColor: fillColor,
            hintText: hintText,
            hintStyle: context.appTextStyle.body2.copyWith(
              color: context.appColors.gray600,
            ),
            contentPadding: contentPadding ?? const P(vertical: S.s12),
            border: border,
            enabledBorder: enabledBorder,
            focusedBorder: focusedBorder,

            suffixIcon: Visibility(
              visible: usePasswordToggle,
              child: IconButton(
                onPressed: passwordNotifier.toggleVisibility,
                icon: Visibility(
                  visible: obscureText,
                  replacement: AppIcon(
                    AppIcons.eyeOpen,
                    color: context.appColors.gray800,
                  ),
                  child: AppIcon(
                    AppIcons.eyeClosed,
                    color: context.appColors.gray600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
