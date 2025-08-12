import 'package:flutter/material.dart';

import 'package:test_ex1/core/presentation/providers/my_desks/desk_list_notifier.dart';

class DeskListProvider extends InheritedNotifier<DeskListNotifier> {
  const DeskListProvider({
    required DeskListNotifier notifier,
    required super.child,
    super.key,
  }) : super(notifier: notifier);

  static DeskListNotifier of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<DeskListProvider>()!
        .notifier!;
  }
}
