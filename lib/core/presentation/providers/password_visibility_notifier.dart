import 'package:flutter/foundation.dart';

class PasswordVisibilityNotifier extends ChangeNotifier {
  bool _obscureText = true;

  bool get obscureText => _obscureText;

  void toggleVisibility() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
