import 'package:flutter/material.dart';
import 'package:test_ex1/core/presentation/providers/password_visibility_notifier.dart';
import 'package:test_ex1/core/presentation/providers/password_visibility_provider.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/desk_list_notifier.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/desk_list_provider.dart';
import 'package:test_ex1/feature/task_detail/presentation/providers/focus_notifier.dart';
import 'package:test_ex1/feature/task_detail/presentation/providers/focus_provider.dart';

class AppMultiProviders extends StatelessWidget {
  final Widget child;

  const AppMultiProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DeskListProvider(
      notifier: DeskListNotifier(),
      child: FocusProvider(
        notifier: FocusNotifier(),
        child: PasswordVisibilityProvider(
          notifier: PasswordVisibilityNotifier(),
          child: child,
        ),
      ),
    );
  }
}
