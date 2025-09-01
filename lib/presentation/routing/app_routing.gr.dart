// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:test_ex1/domain/models/prayer.dart' as _i19;
import 'package:test_ex1/presentation/routing/wrappers/auth_wrapper.dart'
    as _i1;
import 'package:test_ex1/presentation/routing/wrappers/my_desks_wrapper.dart'
    as _i4;
import 'package:test_ex1/presentation/routing/wrappers/subs_wrapper.dart'
    as _i11;
import 'package:test_ex1/presentation/routing/wrappers/users_desks_wrapper.dart'
    as _i16;
import 'package:test_ex1/presentation/screens/login/login_screen.dart' as _i2;
import 'package:test_ex1/presentation/screens/my_columns/my_columns_screen.dart'
    as _i3;
import 'package:test_ex1/presentation/screens/my_prayer_detail/my_prayer_detail_screen.dart'
    as _i5;
import 'package:test_ex1/presentation/screens/my_prayers/my_prayers.dart'
    as _i6;
import 'package:test_ex1/presentation/screens/nav_bar/nav_bar.dart' as _i7;
import 'package:test_ex1/presentation/screens/registration/registration_screen.dart'
    as _i8;
import 'package:test_ex1/presentation/screens/subs_detail/subs_prayer_detail_screen.dart'
    as _i9;
import 'package:test_ex1/presentation/screens/subs_prayers/subs_prayers_screen.dart'
    as _i10;
import 'package:test_ex1/presentation/screens/user_prayers/user_prayers_screen.dart'
    as _i14;
import 'package:test_ex1/presentation/screens/user_prayers_detail/user_prayers_detail_screen.dart'
    as _i13;
import 'package:test_ex1/presentation/screens/users_columns/user_columns_screen.dart'
    as _i12;
import 'package:test_ex1/presentation/screens/users_desks/users_desks_screen.dart'
    as _i15;

/// generated route for
/// [_i1.AuthWrapperScreen]
class AuthWrapperRoute extends _i17.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i17.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return _i17.WrappedRoute(child: const _i1.AuthWrapperScreen());
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i17.PageRouteInfo<void> {
  const LoginRoute({List<_i17.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.MyColumnsScreen]
class MyColumnsRoute extends _i17.PageRouteInfo<void> {
  const MyColumnsRoute({List<_i17.PageRouteInfo>? children})
    : super(MyColumnsRoute.name, initialChildren: children);

  static const String name = 'MyColumnsRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i3.MyColumnsScreen();
    },
  );
}

/// generated route for
/// [_i4.MyDesksWrapperScreen]
class MyDesksWrapperRoute extends _i17.PageRouteInfo<void> {
  const MyDesksWrapperRoute({List<_i17.PageRouteInfo>? children})
    : super(MyDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'MyDesksWrapperRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return _i17.WrappedRoute(child: const _i4.MyDesksWrapperScreen());
    },
  );
}

/// generated route for
/// [_i5.MyPrayerDetailScreen]
class MyPrayerDetailRoute extends _i17.PageRouteInfo<MyPrayerDetailRouteArgs> {
  MyPrayerDetailRoute({
    _i18.Key? key,
    required _i19.PrayerModel prayer,
    List<_i17.PageRouteInfo>? children,
  }) : super(
         MyPrayerDetailRoute.name,
         args: MyPrayerDetailRouteArgs(key: key, prayer: prayer),
         initialChildren: children,
       );

  static const String name = 'MyPrayerDetailRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyPrayerDetailRouteArgs>();
      return _i5.MyPrayerDetailScreen(key: args.key, prayer: args.prayer);
    },
  );
}

class MyPrayerDetailRouteArgs {
  const MyPrayerDetailRouteArgs({this.key, required this.prayer});

  final _i18.Key? key;

  final _i19.PrayerModel prayer;

  @override
  String toString() {
    return 'MyPrayerDetailRouteArgs{key: $key, prayer: $prayer}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MyPrayerDetailRouteArgs) return false;
    return key == other.key && prayer == other.prayer;
  }

  @override
  int get hashCode => key.hashCode ^ prayer.hashCode;
}

/// generated route for
/// [_i6.MyPrayersScreen]
class MyPrayersRoute extends _i17.PageRouteInfo<MyPrayersRouteArgs> {
  MyPrayersRoute({
    _i18.Key? key,
    required int columnId,
    required String columnTitle,
    List<_i17.PageRouteInfo>? children,
  }) : super(
         MyPrayersRoute.name,
         args: MyPrayersRouteArgs(
           key: key,
           columnId: columnId,
           columnTitle: columnTitle,
         ),
         initialChildren: children,
       );

  static const String name = 'MyPrayersRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyPrayersRouteArgs>();
      return _i6.MyPrayersScreen(
        key: args.key,
        columnId: args.columnId,
        columnTitle: args.columnTitle,
      );
    },
  );
}

class MyPrayersRouteArgs {
  const MyPrayersRouteArgs({
    this.key,
    required this.columnId,
    required this.columnTitle,
  });

  final _i18.Key? key;

  final int columnId;

  final String columnTitle;

  @override
  String toString() {
    return 'MyPrayersRouteArgs{key: $key, columnId: $columnId, columnTitle: $columnTitle}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MyPrayersRouteArgs) return false;
    return key == other.key &&
        columnId == other.columnId &&
        columnTitle == other.columnTitle;
  }

  @override
  int get hashCode => key.hashCode ^ columnId.hashCode ^ columnTitle.hashCode;
}

/// generated route for
/// [_i7.NavBar]
class NavBarRoute extends _i17.PageRouteInfo<void> {
  const NavBarRoute({List<_i17.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i7.NavBar();
    },
  );
}

/// generated route for
/// [_i8.RegistrationScreen]
class RegistrationRoute extends _i17.PageRouteInfo<void> {
  const RegistrationRoute({List<_i17.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i8.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i9.SubsPrayerDetailScreen]
class SubsPrayerDetailRoute
    extends _i17.PageRouteInfo<SubsPrayerDetailRouteArgs> {
  SubsPrayerDetailRoute({
    _i18.Key? key,
    required _i19.PrayerModel prayer,
    List<_i17.PageRouteInfo>? children,
  }) : super(
         SubsPrayerDetailRoute.name,
         args: SubsPrayerDetailRouteArgs(key: key, prayer: prayer),
         initialChildren: children,
       );

  static const String name = 'SubsPrayerDetailRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SubsPrayerDetailRouteArgs>();
      return _i9.SubsPrayerDetailScreen(key: args.key, prayer: args.prayer);
    },
  );
}

class SubsPrayerDetailRouteArgs {
  const SubsPrayerDetailRouteArgs({this.key, required this.prayer});

  final _i18.Key? key;

  final _i19.PrayerModel prayer;

  @override
  String toString() {
    return 'SubsPrayerDetailRouteArgs{key: $key, prayer: $prayer}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SubsPrayerDetailRouteArgs) return false;
    return key == other.key && prayer == other.prayer;
  }

  @override
  int get hashCode => key.hashCode ^ prayer.hashCode;
}

/// generated route for
/// [_i10.SubsPrayersScreen]
class SubsPrayersRoute extends _i17.PageRouteInfo<void> {
  const SubsPrayersRoute({List<_i17.PageRouteInfo>? children})
    : super(SubsPrayersRoute.name, initialChildren: children);

  static const String name = 'SubsPrayersRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i10.SubsPrayersScreen();
    },
  );
}

/// generated route for
/// [_i11.SubsWrapper]
class SubsWrapperRoute extends _i17.PageRouteInfo<void> {
  const SubsWrapperRoute({List<_i17.PageRouteInfo>? children})
    : super(SubsWrapperRoute.name, initialChildren: children);

  static const String name = 'SubsWrapperRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return _i17.WrappedRoute(child: const _i11.SubsWrapper());
    },
  );
}

/// generated route for
/// [_i12.UserColumnsScreen]
class UserColumnsRoute extends _i17.PageRouteInfo<UserColumnsRouteArgs> {
  UserColumnsRoute({
    _i18.Key? key,
    required String deskTitle,
    required int columnId,
    List<_i17.PageRouteInfo>? children,
  }) : super(
         UserColumnsRoute.name,
         args: UserColumnsRouteArgs(
           key: key,
           deskTitle: deskTitle,
           columnId: columnId,
         ),
         initialChildren: children,
       );

  static const String name = 'UserColumnsRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserColumnsRouteArgs>();
      return _i12.UserColumnsScreen(
        key: args.key,
        deskTitle: args.deskTitle,
        columnId: args.columnId,
      );
    },
  );
}

class UserColumnsRouteArgs {
  const UserColumnsRouteArgs({
    this.key,
    required this.deskTitle,
    required this.columnId,
  });

  final _i18.Key? key;

  final String deskTitle;

  final int columnId;

  @override
  String toString() {
    return 'UserColumnsRouteArgs{key: $key, deskTitle: $deskTitle, columnId: $columnId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserColumnsRouteArgs) return false;
    return key == other.key &&
        deskTitle == other.deskTitle &&
        columnId == other.columnId;
  }

  @override
  int get hashCode => key.hashCode ^ deskTitle.hashCode ^ columnId.hashCode;
}

/// generated route for
/// [_i13.UserPrayerDetailPage]
class UserPrayerDetailRoute
    extends _i17.PageRouteInfo<UserPrayerDetailRouteArgs> {
  UserPrayerDetailRoute({
    _i18.Key? key,
    required _i19.PrayerModel prayer,
    List<_i17.PageRouteInfo>? children,
  }) : super(
         UserPrayerDetailRoute.name,
         args: UserPrayerDetailRouteArgs(key: key, prayer: prayer),
         initialChildren: children,
       );

  static const String name = 'UserPrayerDetailRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserPrayerDetailRouteArgs>();
      return _i13.UserPrayerDetailPage(key: args.key, prayer: args.prayer);
    },
  );
}

class UserPrayerDetailRouteArgs {
  const UserPrayerDetailRouteArgs({this.key, required this.prayer});

  final _i18.Key? key;

  final _i19.PrayerModel prayer;

  @override
  String toString() {
    return 'UserPrayerDetailRouteArgs{key: $key, prayer: $prayer}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserPrayerDetailRouteArgs) return false;
    return key == other.key && prayer == other.prayer;
  }

  @override
  int get hashCode => key.hashCode ^ prayer.hashCode;
}

/// generated route for
/// [_i14.UserPrayersScreen]
class UserPrayersRoute extends _i17.PageRouteInfo<UserPrayersRouteArgs> {
  UserPrayersRoute({
    _i18.Key? key,
    required int columnId,
    required String columnTitle,
    List<_i17.PageRouteInfo>? children,
  }) : super(
         UserPrayersRoute.name,
         args: UserPrayersRouteArgs(
           key: key,
           columnId: columnId,
           columnTitle: columnTitle,
         ),
         initialChildren: children,
       );

  static const String name = 'UserPrayersRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserPrayersRouteArgs>();
      return _i14.UserPrayersScreen(
        key: args.key,
        columnId: args.columnId,
        columnTitle: args.columnTitle,
      );
    },
  );
}

class UserPrayersRouteArgs {
  const UserPrayersRouteArgs({
    this.key,
    required this.columnId,
    required this.columnTitle,
  });

  final _i18.Key? key;

  final int columnId;

  final String columnTitle;

  @override
  String toString() {
    return 'UserPrayersRouteArgs{key: $key, columnId: $columnId, columnTitle: $columnTitle}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserPrayersRouteArgs) return false;
    return key == other.key &&
        columnId == other.columnId &&
        columnTitle == other.columnTitle;
  }

  @override
  int get hashCode => key.hashCode ^ columnId.hashCode ^ columnTitle.hashCode;
}

/// generated route for
/// [_i15.UsersDesksScreen]
class UsersDesksRoute extends _i17.PageRouteInfo<void> {
  const UsersDesksRoute({List<_i17.PageRouteInfo>? children})
    : super(UsersDesksRoute.name, initialChildren: children);

  static const String name = 'UsersDesksRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i15.UsersDesksScreen();
    },
  );
}

/// generated route for
/// [_i16.UsersDesksWrapperScreen]
class UsersDesksWrapperRoute extends _i17.PageRouteInfo<void> {
  const UsersDesksWrapperRoute({List<_i17.PageRouteInfo>? children})
    : super(UsersDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'UsersDesksWrapperRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return _i17.WrappedRoute(child: const _i16.UsersDesksWrapperScreen());
    },
  );
}
