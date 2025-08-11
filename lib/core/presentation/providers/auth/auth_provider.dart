import 'package:flutter/widgets.dart';

import 'package:test_ex1/core/presentation/providers/auth/auth_notifier.dart';

class AuthProvider extends InheritedNotifier<AuthNotifier> {
  const AuthProvider({
    super.key,
    required super.notifier,
    required super.child,
  });

  static AuthNotifier of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AuthProvider>()!
        .notifier!;
  }
}
