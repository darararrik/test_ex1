// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;
import 'package:test_ex1/domain/models/prayer.dart' as _i21;
import 'package:test_ex1/presentation/pages/followed_page/followed_page.dart'
    as _i2;
import 'package:test_ex1/presentation/pages/followed_page/followed_task_detail_page.dart'
    as _i3;
import 'package:test_ex1/presentation/pages/my_desks_page/my_tasks_detail_page.dart'
    as _i8;
import 'package:test_ex1/presentation/pages/my_desks_page/my_tasks_page.dart'
    as _i9;
import 'package:test_ex1/presentation/pages/users_desks_page/user_desks.dart'
    as _i13;
import 'package:test_ex1/presentation/pages/users_desks_page/user_task_detail_page.dart'
    as _i15;
import 'package:test_ex1/presentation/pages/users_desks_page/user_tasks_page.dart'
    as _i16;
import 'package:test_ex1/presentation/routing/wrappers/auth_wrapper.dart'
    as _i1;
import 'package:test_ex1/presentation/routing/wrappers/followed_wrapper.dart'
    as _i4;
import 'package:test_ex1/presentation/routing/wrappers/my_desks_wrapper.dart'
    as _i7;
import 'package:test_ex1/presentation/routing/wrappers/users_desks_wrapper.dart'
    as _i18;
import 'package:test_ex1/presentation/screens/login/login_screen.dart' as _i5;
import 'package:test_ex1/presentation/screens/my_desks/my_desk_screen.dart'
    as _i6;
import 'package:test_ex1/presentation/screens/nav_bar/nav_bar.dart' as _i10;
import 'package:test_ex1/presentation/screens/registration/registration_screen.dart'
    as _i11;
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart'
    as _i12;
import 'package:test_ex1/presentation/screens/user_columns/user_columns_screen.dart'
    as _i14;
import 'package:test_ex1/presentation/screens/users_desks/users_desks_screen.dart'
    as _i17;

/// generated route for
/// [_i1.AuthWrapperScreen]
class AuthWrapperRoute extends _i19.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i19.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return _i19.WrappedRoute(child: const _i1.AuthWrapperScreen());
    },
  );
}

/// generated route for
/// [_i2.FollowedPage]
class FollowedRoute extends _i19.PageRouteInfo<void> {
  const FollowedRoute({List<_i19.PageRouteInfo>? children})
    : super(FollowedRoute.name, initialChildren: children);

  static const String name = 'FollowedRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i2.FollowedPage();
    },
  );
}

/// generated route for
/// [_i3.FollowedTaskDetailPage]
class FollowedTaskDetailRoute
    extends _i19.PageRouteInfo<FollowedTaskDetailRouteArgs> {
  FollowedTaskDetailRoute({
    _i20.Key? key,
    required _i21.PrayerModel task,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         FollowedTaskDetailRoute.name,
         args: FollowedTaskDetailRouteArgs(key: key, task: task),
         initialChildren: children,
       );

  static const String name = 'FollowedTaskDetailRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FollowedTaskDetailRouteArgs>();
      return _i3.FollowedTaskDetailPage(key: args.key, task: args.task);
    },
  );
}

class FollowedTaskDetailRouteArgs {
  const FollowedTaskDetailRouteArgs({this.key, required this.task});

  final _i20.Key? key;

  final _i21.PrayerModel task;

  @override
  String toString() {
    return 'FollowedTaskDetailRouteArgs{key: $key, task: $task}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FollowedTaskDetailRouteArgs) return false;
    return key == other.key && task == other.task;
  }

  @override
  int get hashCode => key.hashCode ^ task.hashCode;
}

/// generated route for
/// [_i4.FollowedWrapperScreen]
class FollowedWrapperRoute extends _i19.PageRouteInfo<void> {
  const FollowedWrapperRoute({List<_i19.PageRouteInfo>? children})
    : super(FollowedWrapperRoute.name, initialChildren: children);

  static const String name = 'FollowedWrapperRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return _i19.WrappedRoute(child: const _i4.FollowedWrapperScreen());
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute({List<_i19.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginScreen();
    },
  );
}

/// generated route for
/// [_i6.MyDesksListScreen]
class MyDesksListRoute extends _i19.PageRouteInfo<void> {
  const MyDesksListRoute({List<_i19.PageRouteInfo>? children})
    : super(MyDesksListRoute.name, initialChildren: children);

  static const String name = 'MyDesksListRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i6.MyDesksListScreen();
    },
  );
}

/// generated route for
/// [_i7.MyDesksWrapperScreen]
class MyDesksWrapperRoute extends _i19.PageRouteInfo<void> {
  const MyDesksWrapperRoute({List<_i19.PageRouteInfo>? children})
    : super(MyDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'MyDesksWrapperRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return _i19.WrappedRoute(child: const _i7.MyDesksWrapperScreen());
    },
  );
}

/// generated route for
/// [_i8.MyTaskDetailPage]
class MyTaskDetailRoute extends _i19.PageRouteInfo<MyTaskDetailRouteArgs> {
  MyTaskDetailRoute({
    _i20.Key? key,
    required _i21.PrayerModel prayer,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         MyTaskDetailRoute.name,
         args: MyTaskDetailRouteArgs(key: key, prayer: prayer),
         initialChildren: children,
       );

  static const String name = 'MyTaskDetailRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyTaskDetailRouteArgs>();
      return _i8.MyTaskDetailPage(key: args.key, prayer: args.prayer);
    },
  );
}

class MyTaskDetailRouteArgs {
  const MyTaskDetailRouteArgs({this.key, required this.prayer});

  final _i20.Key? key;

  final _i21.PrayerModel prayer;

  @override
  String toString() {
    return 'MyTaskDetailRouteArgs{key: $key, prayer: $prayer}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MyTaskDetailRouteArgs) return false;
    return key == other.key && prayer == other.prayer;
  }

  @override
  int get hashCode => key.hashCode ^ prayer.hashCode;
}

/// generated route for
/// [_i9.MyTasksPage]
class MyTasksRoute extends _i19.PageRouteInfo<MyTasksRouteArgs> {
  MyTasksRoute({
    _i20.Key? key,
    required int deskId,
    required String titleAB,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         MyTasksRoute.name,
         args: MyTasksRouteArgs(key: key, deskId: deskId, titleAB: titleAB),
         initialChildren: children,
       );

  static const String name = 'MyTasksRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyTasksRouteArgs>();
      return _i9.MyTasksPage(
        key: args.key,
        deskId: args.deskId,
        titleAB: args.titleAB,
      );
    },
  );
}

class MyTasksRouteArgs {
  const MyTasksRouteArgs({
    this.key,
    required this.deskId,
    required this.titleAB,
  });

  final _i20.Key? key;

  final int deskId;

  final String titleAB;

  @override
  String toString() {
    return 'MyTasksRouteArgs{key: $key, deskId: $deskId, titleAB: $titleAB}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MyTasksRouteArgs) return false;
    return key == other.key &&
        deskId == other.deskId &&
        titleAB == other.titleAB;
  }

  @override
  int get hashCode => key.hashCode ^ deskId.hashCode ^ titleAB.hashCode;
}

/// generated route for
/// [_i10.NavBar]
class NavBarRoute extends _i19.PageRouteInfo<void> {
  const NavBarRoute({List<_i19.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i10.NavBar();
    },
  );
}

/// generated route for
/// [_i11.RegistrationScreen]
class RegistrationRoute extends _i19.PageRouteInfo<void> {
  const RegistrationRoute({List<_i19.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i11.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i12.TaskDetailScreen]
class TaskDetailRoute extends _i19.PageRouteInfo<TaskDetailRouteArgs> {
  TaskDetailRoute({
    _i20.Key? key,
    required _i21.PrayerModel prayer,
    required _i20.VoidCallback onPressedPrayButton,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         TaskDetailRoute.name,
         args: TaskDetailRouteArgs(
           key: key,
           prayer: prayer,
           onPressedPrayButton: onPressedPrayButton,
         ),
         initialChildren: children,
       );

  static const String name = 'TaskDetailRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskDetailRouteArgs>();
      return _i12.TaskDetailScreen(
        key: args.key,
        prayer: args.prayer,
        onPressedPrayButton: args.onPressedPrayButton,
      );
    },
  );
}

class TaskDetailRouteArgs {
  const TaskDetailRouteArgs({
    this.key,
    required this.prayer,
    required this.onPressedPrayButton,
  });

  final _i20.Key? key;

  final _i21.PrayerModel prayer;

  final _i20.VoidCallback onPressedPrayButton;

  @override
  String toString() {
    return 'TaskDetailRouteArgs{key: $key, prayer: $prayer, onPressedPrayButton: $onPressedPrayButton}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TaskDetailRouteArgs) return false;
    return key == other.key &&
        prayer == other.prayer &&
        onPressedPrayButton == other.onPressedPrayButton;
  }

  @override
  int get hashCode =>
      key.hashCode ^ prayer.hashCode ^ onPressedPrayButton.hashCode;
}

/// generated route for
/// [_i13.UserDesks]
class UserDesks extends _i19.PageRouteInfo<UserDesksArgs> {
  UserDesks({
    _i20.Key? key,
    required String titleAB,
    required int deskId,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         UserDesks.name,
         args: UserDesksArgs(key: key, titleAB: titleAB, deskId: deskId),
         initialChildren: children,
       );

  static const String name = 'UserDesks';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserDesksArgs>();
      return _i13.UserDesks(
        key: args.key,
        titleAB: args.titleAB,
        deskId: args.deskId,
      );
    },
  );
}

class UserDesksArgs {
  const UserDesksArgs({this.key, required this.titleAB, required this.deskId});

  final _i20.Key? key;

  final String titleAB;

  final int deskId;

  @override
  String toString() {
    return 'UserDesksArgs{key: $key, titleAB: $titleAB, deskId: $deskId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserDesksArgs) return false;
    return key == other.key &&
        titleAB == other.titleAB &&
        deskId == other.deskId;
  }

  @override
  int get hashCode => key.hashCode ^ titleAB.hashCode ^ deskId.hashCode;
}

/// generated route for
/// [_i14.UserDesksScreen]
class UserDesksRoute extends _i19.PageRouteInfo<UserDesksRouteArgs> {
  UserDesksRoute({
    _i20.Key? key,
    required int userId,
    required String titleAB,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         UserDesksRoute.name,
         args: UserDesksRouteArgs(key: key, userId: userId, titleAB: titleAB),
         initialChildren: children,
       );

  static const String name = 'UserDesksRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserDesksRouteArgs>();
      return _i14.UserDesksScreen(
        key: args.key,
        userId: args.userId,
        titleAB: args.titleAB,
      );
    },
  );
}

class UserDesksRouteArgs {
  const UserDesksRouteArgs({
    this.key,
    required this.userId,
    required this.titleAB,
  });

  final _i20.Key? key;

  final int userId;

  final String titleAB;

  @override
  String toString() {
    return 'UserDesksRouteArgs{key: $key, userId: $userId, titleAB: $titleAB}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserDesksRouteArgs) return false;
    return key == other.key &&
        userId == other.userId &&
        titleAB == other.titleAB;
  }

  @override
  int get hashCode => key.hashCode ^ userId.hashCode ^ titleAB.hashCode;
}

/// generated route for
/// [_i15.UserTaskDetailPage]
class UserTaskDetailRoute extends _i19.PageRouteInfo<UserTaskDetailRouteArgs> {
  UserTaskDetailRoute({
    _i20.Key? key,
    required _i21.PrayerModel prayer,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         UserTaskDetailRoute.name,
         args: UserTaskDetailRouteArgs(key: key, prayer: prayer),
         initialChildren: children,
       );

  static const String name = 'UserTaskDetailRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserTaskDetailRouteArgs>();
      return _i15.UserTaskDetailPage(key: args.key, prayer: args.prayer);
    },
  );
}

class UserTaskDetailRouteArgs {
  const UserTaskDetailRouteArgs({this.key, required this.prayer});

  final _i20.Key? key;

  final _i21.PrayerModel prayer;

  @override
  String toString() {
    return 'UserTaskDetailRouteArgs{key: $key, prayer: $prayer}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserTaskDetailRouteArgs) return false;
    return key == other.key && prayer == other.prayer;
  }

  @override
  int get hashCode => key.hashCode ^ prayer.hashCode;
}

/// generated route for
/// [_i16.UserTasksPage]
class UserTasksRoute extends _i19.PageRouteInfo<UserTasksRouteArgs> {
  UserTasksRoute({
    _i20.Key? key,
    required String titleAB,
    required int columnId,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         UserTasksRoute.name,
         args: UserTasksRouteArgs(
           key: key,
           titleAB: titleAB,
           columnId: columnId,
         ),
         initialChildren: children,
       );

  static const String name = 'UserTasksRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserTasksRouteArgs>();
      return _i16.UserTasksPage(
        key: args.key,
        titleAB: args.titleAB,
        columnId: args.columnId,
      );
    },
  );
}

class UserTasksRouteArgs {
  const UserTasksRouteArgs({
    this.key,
    required this.titleAB,
    required this.columnId,
  });

  final _i20.Key? key;

  final String titleAB;

  final int columnId;

  @override
  String toString() {
    return 'UserTasksRouteArgs{key: $key, titleAB: $titleAB, columnId: $columnId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserTasksRouteArgs) return false;
    return key == other.key &&
        titleAB == other.titleAB &&
        columnId == other.columnId;
  }

  @override
  int get hashCode => key.hashCode ^ titleAB.hashCode ^ columnId.hashCode;
}

/// generated route for
/// [_i17.UsersDesksScreen]
class UsersDesksRoute extends _i19.PageRouteInfo<void> {
  const UsersDesksRoute({List<_i19.PageRouteInfo>? children})
    : super(UsersDesksRoute.name, initialChildren: children);

  static const String name = 'UsersDesksRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i17.UsersDesksScreen();
    },
  );
}

/// generated route for
/// [_i18.UsersDesksWrapperScreen]
class UsersDesksWrapperRoute extends _i19.PageRouteInfo<void> {
  const UsersDesksWrapperRoute({List<_i19.PageRouteInfo>? children})
    : super(UsersDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'UsersDesksWrapperRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return _i19.WrappedRoute(child: const _i18.UsersDesksWrapperScreen());
    },
  );
}
