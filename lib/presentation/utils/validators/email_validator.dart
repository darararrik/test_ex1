import 'package:flutter/material.dart';

import 'package:test_ex1/presentation/utils/extensions/build_context_x.dart';

String? validatorEmail(String? value, BuildContext context) {
  final email = value?.trim() ?? '';
  final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  if (!emailRegex.hasMatch(email)) {
    return context.l10n.errorInvalidEmail;
  }
  return null;
}
