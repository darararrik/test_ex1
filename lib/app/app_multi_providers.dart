import 'package:flutter/material.dart';

import 'package:test_ex1/core/db/db.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/providers.dart';
import 'package:test_ex1/feature/task_detail/presentation/providers/providers.dart';

class AppMultiProviders extends StatelessWidget {
  const AppMultiProviders({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      notifier: AuthNotifier(ProfileDao(AppDatabase())),
      child: DeskListProvider(
        notifier: DeskListNotifier(),
        child: FocusProvider(
          notifier: FocusNotifier(),
          child: PasswordVisibilityProvider(
            notifier: PasswordVisibilityNotifier(),
            child: child,
          ),
        ),
      ),
    );
  }
}
