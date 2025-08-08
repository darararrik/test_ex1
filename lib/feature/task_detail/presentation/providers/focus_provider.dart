import 'package:flutter/widgets.dart';
import 'package:test_ex1/feature/task_detail/presentation/providers/focus_notifier.dart';

class FocusProvider extends InheritedNotifier<FocusNotifier> {
  const FocusProvider({
    super.key,
    required super.notifier,
    required super.child,
  });

  static FocusNotifier of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<FocusProvider>()!
        .notifier!;
  }
}
