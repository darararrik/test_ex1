// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get login => 'Log in';

  @override
  String get registration => 'Registration';

  @override
  String get enterFirstName => 'Enter your first name';

  @override
  String get firstNameLabel => 'Name';

  @override
  String get enterEmail => 'Enter your email';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get enterPassword => 'Enter your password';

  @override
  String get passwordLabel => 'Password';

  @override
  String get confirmPassword => 'Confirm your password';

  @override
  String get confirmPasswordLabel => 'Confirm Password';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get signUp => 'Sign Up';

  @override
  String get myDesk => 'My desk';

  @override
  String get usersDesks => 'Users desks';

  @override
  String get followed => 'Followed';
}
