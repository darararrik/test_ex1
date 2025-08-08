import 'package:flutter/material.dart';
import 'package:test_ex1/core/db/app_db/app_db.dart';
import 'package:test_ex1/core/db/dao/profile_dao.dart';
import 'package:test_ex1/core/presentation/providers/auth/auth_notifier.dart';
import 'package:test_ex1/core/presentation/providers/auth/auth_provider.dart';
import 'package:test_ex1/core/presentation/providers/password_visibility/password_visibility_notifier.dart';
import 'package:test_ex1/core/presentation/providers/password_visibility/password_visibility_provider.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/desk_list_notifier.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/desk_list_provider.dart';
import 'package:test_ex1/feature/task_detail/presentation/providers/focus_notifier.dart';
import 'package:test_ex1/feature/task_detail/presentation/providers/focus_provider.dart';

class AppMultiProviders extends StatelessWidget {
  final Widget child;

  const AppMultiProviders({super.key, required this.child});

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
