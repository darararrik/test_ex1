import 'package:flutter/material.dart';
import 'package:test_ex1/core/presentation/providers/password_visibility_notifier.dart';
import 'package:test_ex1/core/presentation/providers/password_visibility_provider.dart';

class AppMultiProviders extends StatelessWidget {
  final Widget child;

  const AppMultiProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return PasswordVisibilityProvider(
      notifier: PasswordVisibilityNotifier(),
      child: child,
    );
  }
}
