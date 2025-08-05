import 'package:flutter/widgets.dart';

extension ListX on List<Widget> {
  List<Widget> separated(Widget separator) {
    if (isEmpty) return [];
    final List<Widget> result = [];
    for (int i = 0; i < length; i++) {
      result.add(this[i]);
      if (i < length - 1) {
        result.add(separator);
      }
    }
    return result;
  }
}
