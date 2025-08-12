import 'package:flutter/material.dart';

import 'package:test_ex1/core/presentation/providers/users_desks/users_desk_list_notifier.dart';

class UsersDesksListProvider extends InheritedNotifier<UsersDesksListNotifier> {
  const UsersDesksListProvider({
    required UsersDesksListNotifier notifier,
    required super.child,
    super.key,
  }) : super(notifier: notifier);

  static UsersDesksListNotifier of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<UsersDesksListProvider>()!
        .notifier!;
  }
}
