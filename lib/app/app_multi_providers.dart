import 'package:flutter/material.dart';

import 'package:test_ex1/core/db/db.dart';
import 'package:test_ex1/core/presentation/providers/followed_desks/followed_desks.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';
import 'package:test_ex1/feature/task_detail/presentation/providers/providers.dart';

class AppMultiProviders extends StatelessWidget {
  const AppMultiProviders({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final myDeskListNotifier = DeskListNotifier();
    final usersDesksNotifier = UsersDesksListNotifier();
    return AuthProvider(
      notifier: AuthNotifier(ProfileDao(AppDatabase())),
      child: FollowedTasksListProvider(
        notifier: FollowedListNotifier(
          myDeskListNotifier: myDeskListNotifier,
          usersDesksNotifier: usersDesksNotifier,
        ),
        child: UsersDesksListProvider(
          notifier: usersDesksNotifier,
          child: DeskListProvider(
            notifier: myDeskListNotifier,
            child: FocusProvider(
              notifier: FocusNotifier(),
              child: PasswordVisibilityProvider(
                notifier: PasswordVisibilityNotifier(),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
