import 'package:flutter/material.dart';

class FocusNotifier extends ChangeNotifier {
  bool _hasFocus = false;

  bool get hasFocus => _hasFocus;

  void setFocus(bool value) {
    if (_hasFocus != value) {
      _hasFocus = value;
      notifyListeners();
    }
  }
}
