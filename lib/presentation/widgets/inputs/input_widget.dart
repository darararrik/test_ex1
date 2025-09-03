import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/app_icon.dart';
import 'package:test_ex1/state/password_visibility/password_visibility_cubit.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.enabled = true,
    this.isPassword = false,
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
  final bool isPassword;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final bool? filled;
  final Color? fillColor;
  final EdgeInsets? contentPadding;
  final bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordVisibilityCubit(),
      child: Builder(
        builder: (context) {
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
                obscureText: isPassword
                    ? !context.watch<PasswordVisibilityCubit>().state
                    : obscureText,
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
                    visible: isPassword,
                    child: IconButton(
                      onPressed: context
                          .read<PasswordVisibilityCubit>()
                          .toggleVisibility,
                      icon: BlocBuilder<PasswordVisibilityCubit, bool>(
                        builder: (context, isVisible) {
                          return AppIcon(
                            isVisible ? AppIcons.eyeOpen : AppIcons.eyeClosed,
                            color: context.appColors.gray800,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
