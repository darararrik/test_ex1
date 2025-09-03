abstract class RestConstants {
  static const String authSignIn = '/auth/sign-in';
  static const String authSignUp = '/auth/sign-up';

  static String desks = '/desks';
  static String myDesks = '/desks/my';
  static String deskColumns(int deskId) => '/desks/$deskId/columns';

  static String columnById(int columnId) => '/columns/$columnId';
  static String columnPrayers(int columnId) => '/columns/$columnId/prayers';
  static const String columns = '/columns';

  static const String subscribedPrayers = '/subscribed-prayers';
  static String prayerById(int prayerId) => '/prayers/$prayerId';
  static String prayerSubscribe(int prayerId) => '/prayers/$prayerId/subscribe';
  static String prayerComplete(int prayerId) => '/prayers/$prayerId/complete';
  static String prayerDo(int prayerId) => '/prayers/$prayerId/do';
  static String prayerComments(int prayerId) => '/prayers/$prayerId/comments';
}
