import 'package:flutter/material.dart';

import 'package:test_ex1/data/db/db.dart';
import 'package:test_ex1/old-providers/providers.dart';
import 'package:test_ex1/presentation/screens/task_detail/providers/providers.dart';

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
