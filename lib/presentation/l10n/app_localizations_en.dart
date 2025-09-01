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

  @override
  String get members => 'Members';

  @override
  String get complete => 'Complete';

  @override
  String get date => 'Date';

  @override
  String get totalPrayers => 'Total prayers';

  @override
  String get otherPrayers => 'Other prayers';

  @override
  String get myPrayers => 'My prayers';

  @override
  String get prayed => 'Prayed';

  @override
  String get follow => 'Follow';

  @override
  String get comments => 'Comments';

  @override
  String get enterYourComment => 'Enter your comment';

  @override
  String get emptyDeskScreen => 'You haven\'t created any column.';

  @override
  String get newColumn => 'New column';

  @override
  String get newPrayer => 'New prayer';

  @override
  String get enterTitlePrayer => 'Enter title of prayer';

  @override
  String get enterTitleColumn => 'Enter title of column';

  @override
  String get add => 'Add';

  @override
  String get emptyMyPrayersScreen => 'You haven\'t created any prayer.';

  @override
  String get errorInvalidEmail => 'Enter correct e-mail';

  @override
  String get errorPasswordTooShort =>
      'Password field must be at leat 5 characters';

  @override
  String get errorPasswordsDoNotMatch => 'Both passwords must match';

  @override
  String get errorEnterName => 'Name cannot be empty';

  @override
  String get logOutTitle => 'Are you sure you want to log out?';

  @override
  String get logOut => 'Log out';

  @override
  String get cancel => 'Cancel';

  @override
  String get sorry => 'Sorry!';

  @override
  String get sorryText => 'The counter can be pressed\nonce per hour.';

  @override
  String get ok => 'OK';

  @override
  String get emptySubscriptions => 'You haven no subscriptions yet.';

  @override
  String get internetError => 'Internet connection lost.';

  @override
  String get emptyUsersDesks => 'No one’s created a desk yet :(';

  @override
  String get emptyUsersColumns => 'User has not created columns yet';

  @override
  String get emptyUserPrayers => 'The user has not created any prayers yet';
}
