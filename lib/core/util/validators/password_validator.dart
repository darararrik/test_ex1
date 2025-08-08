import 'package:flutter/widgets.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';

String? shortPasswordValidator(String? value, BuildContext context) {
  final pass = value?.trim() ?? '';
  if (pass.length < 5) {
    return context.l10n.errorPasswordTooShort;
  }
  return null;
}

String? matchPasswordcValidator(
  String? value,
  BuildContext context,
  TextEditingController firstPasswordController,
) {
  if (value?.trim() != firstPasswordController.text.trim()) {
    return context.l10n.errorPasswordsDoNotMatch;
  }
  return null;
}
