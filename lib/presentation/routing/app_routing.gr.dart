// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:test_ex1/presentation/pages/followed_page/followed_page.dart'
    as _i2;
import 'package:test_ex1/presentation/pages/followed_page/followed_task_detail_page.dart'
    as _i3;
import 'package:test_ex1/presentation/pages/my_desks_page/my_tasks_detail_page.dart'
    as _i8;
import 'package:test_ex1/presentation/pages/my_desks_page/my_tasks_page.dart'
    as _i9;
import 'package:test_ex1/presentation/pages/users_desks_page/user_task_detail_page.dart'
    as _i14;
import 'package:test_ex1/presentation/pages/users_desks_page/user_tasks_page.dart'
    as _i15;
import 'package:test_ex1/presentation/routing/wrappers/auth_wrapper.dart'
    as _i1;
import 'package:test_ex1/presentation/routing/wrappers/followed_wrapper.dart'
    as _i4;
import 'package:test_ex1/presentation/routing/wrappers/my_desks_wrapper.dart'
    as _i7;
import 'package:test_ex1/presentation/routing/wrappers/users_desks_wrapper.dart'
    as _i17;
import 'package:test_ex1/presentation/screens/login/login_screen.dart' as _i5;
import 'package:test_ex1/presentation/screens/my_desks/my_desk_screen.dart'
    as _i6;
import 'package:test_ex1/presentation/screens/nav_bar/nav_bar.dart' as _i10;
import 'package:test_ex1/presentation/screens/registration/registration_screen.dart'
    as _i11;
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart'
    as _i12;
import 'package:test_ex1/presentation/screens/user_desks/user_desks_screen.dart'
    as _i13;
import 'package:test_ex1/presentation/screens/users_desks/users_desks_screen.dart'
    as _i16;

/// generated route for
/// [_i1.AuthWrapperScreen]
class AuthWrapperRoute extends _i18.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i18.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return _i18.WrappedRoute(child: const _i1.AuthWrapperScreen());
    },
  );
}

/// generated route for
/// [_i2.FollowedPage]
class FollowedRoute extends _i18.PageRouteInfo<void> {
  const FollowedRoute({List<_i18.PageRouteInfo>? children})
    : super(FollowedRoute.name, initialChildren: children);

  static const String name = 'FollowedRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i2.FollowedPage();
    },
  );
}

/// generated route for
/// [_i3.FollowedTaskDetailPage]
class FollowedTaskDetailRoute
    extends _i18.PageRouteInfo<FollowedTaskDetailRouteArgs> {
  FollowedTaskDetailRoute({
    _i19.Key? key,
    required InvalidType task,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         FollowedTaskDetailRoute.name,
         args: FollowedTaskDetailRouteArgs(key: key, task: task),
         initialChildren: children,
       );

  static const String name = 'FollowedTaskDetailRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FollowedTaskDetailRouteArgs>();
      return _i3.FollowedTaskDetailPage(key: args.key, task: args.task);
    },
  );
}

class FollowedTaskDetailRouteArgs {
  const FollowedTaskDetailRouteArgs({this.key, required this.task});

  final _i19.Key? key;

  final InvalidType task;

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
class FollowedWrapperRoute extends _i18.PageRouteInfo<void> {
  const FollowedWrapperRoute({List<_i18.PageRouteInfo>? children})
    : super(FollowedWrapperRoute.name, initialChildren: children);

  static const String name = 'FollowedWrapperRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return _i18.WrappedRoute(child: const _i4.FollowedWrapperScreen());
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute({List<_i18.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginScreen();
    },
  );
}

/// generated route for
/// [_i6.MyDesksListScreen]
class MyDesksListRoute extends _i18.PageRouteInfo<void> {
  const MyDesksListRoute({List<_i18.PageRouteInfo>? children})
    : super(MyDesksListRoute.name, initialChildren: children);

  static const String name = 'MyDesksListRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i6.MyDesksListScreen();
    },
  );
}

/// generated route for
/// [_i7.MyDesksWrapperScreen]
class MyDesksWrapperRoute extends _i18.PageRouteInfo<void> {
  const MyDesksWrapperRoute({List<_i18.PageRouteInfo>? children})
    : super(MyDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'MyDesksWrapperRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return _i18.WrappedRoute(child: const _i7.MyDesksWrapperScreen());
    },
  );
}

/// generated route for
/// [_i8.MyTaskDetailPage]
class MyTaskDetailRoute extends _i18.PageRouteInfo<MyTaskDetailRouteArgs> {
  MyTaskDetailRoute({
    _i19.Key? key,
    required InvalidType task,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         MyTaskDetailRoute.name,
         args: MyTaskDetailRouteArgs(key: key, task: task),
         initialChildren: children,
       );

  static const String name = 'MyTaskDetailRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyTaskDetailRouteArgs>();
      return _i8.MyTaskDetailPage(key: args.key, task: args.task);
    },
  );
}

class MyTaskDetailRouteArgs {
  const MyTaskDetailRouteArgs({this.key, required this.task});

  final _i19.Key? key;

  final InvalidType task;

  @override
  String toString() {
    return 'MyTaskDetailRouteArgs{key: $key, task: $task}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MyTaskDetailRouteArgs) return false;
    return key == other.key && task == other.task;
  }

  @override
  int get hashCode => key.hashCode ^ task.hashCode;
}

/// generated route for
/// [_i9.MyTasksPage]
class MyTasksRoute extends _i18.PageRouteInfo<MyTasksRouteArgs> {
  MyTasksRoute({
    _i19.Key? key,
    required int deskId,
    required String titleAB,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         MyTasksRoute.name,
         args: MyTasksRouteArgs(key: key, deskId: deskId, titleAB: titleAB),
         initialChildren: children,
       );

  static const String name = 'MyTasksRoute';

  static _i18.PageInfo page = _i18.PageInfo(
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

  final _i19.Key? key;

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
class NavBarRoute extends _i18.PageRouteInfo<void> {
  const NavBarRoute({List<_i18.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i10.NavBar();
    },
  );
}

/// generated route for
/// [_i11.RegistrationScreen]
class RegistrationRoute extends _i18.PageRouteInfo<void> {
  const RegistrationRoute({List<_i18.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i11.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i12.TaskDetailScreen]
class TaskDetailRoute extends _i18.PageRouteInfo<TaskDetailRouteArgs> {
  TaskDetailRoute({
    _i19.Key? key,
    required InvalidType task,
    required _i19.VoidCallback onPressedPrayButton,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         TaskDetailRoute.name,
         args: TaskDetailRouteArgs(
           key: key,
           task: task,
           onPressedPrayButton: onPressedPrayButton,
         ),
         initialChildren: children,
       );

  static const String name = 'TaskDetailRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskDetailRouteArgs>();
      return _i12.TaskDetailScreen(
        key: args.key,
        task: args.task,
        onPressedPrayButton: args.onPressedPrayButton,
      );
    },
  );
}

class TaskDetailRouteArgs {
  const TaskDetailRouteArgs({
    this.key,
    required this.task,
    required this.onPressedPrayButton,
  });

  final _i19.Key? key;

  final InvalidType task;

  final _i19.VoidCallback onPressedPrayButton;

  @override
  String toString() {
    return 'TaskDetailRouteArgs{key: $key, task: $task, onPressedPrayButton: $onPressedPrayButton}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TaskDetailRouteArgs) return false;
    return key == other.key &&
        task == other.task &&
        onPressedPrayButton == other.onPressedPrayButton;
  }

  @override
  int get hashCode =>
      key.hashCode ^ task.hashCode ^ onPressedPrayButton.hashCode;
}

/// generated route for
/// [_i13.UserDesksScreen]
class UserDesksRoute extends _i18.PageRouteInfo<UserDesksRouteArgs> {
  UserDesksRoute({
    _i19.Key? key,
    required int userId,
    required String titleAB,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         UserDesksRoute.name,
         args: UserDesksRouteArgs(key: key, userId: userId, titleAB: titleAB),
         initialChildren: children,
       );

  static const String name = 'UserDesksRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserDesksRouteArgs>();
      return _i13.UserDesksScreen(
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

  final _i19.Key? key;

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
/// [_i14.UserTaskDetailPage]
class UserTaskDetailRoute extends _i18.PageRouteInfo<UserTaskDetailRouteArgs> {
  UserTaskDetailRoute({
    _i19.Key? key,
    required InvalidType task,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         UserTaskDetailRoute.name,
         args: UserTaskDetailRouteArgs(key: key, task: task),
         initialChildren: children,
       );

  static const String name = 'UserTaskDetailRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserTaskDetailRouteArgs>();
      return _i14.UserTaskDetailPage(key: args.key, task: args.task);
    },
  );
}

class UserTaskDetailRouteArgs {
  const UserTaskDetailRouteArgs({this.key, required this.task});

  final _i19.Key? key;

  final InvalidType task;

  @override
  String toString() {
    return 'UserTaskDetailRouteArgs{key: $key, task: $task}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserTaskDetailRouteArgs) return false;
    return key == other.key && task == other.task;
  }

  @override
  int get hashCode => key.hashCode ^ task.hashCode;
}

/// generated route for
/// [_i15.UserTasksPage]
class UserTasksRoute extends _i18.PageRouteInfo<UserTasksRouteArgs> {
  UserTasksRoute({
    _i19.Key? key,
    required int deskId,
    required int userId,
    required String titleAB,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         UserTasksRoute.name,
         args: UserTasksRouteArgs(
           key: key,
           deskId: deskId,
           userId: userId,
           titleAB: titleAB,
         ),
         initialChildren: children,
       );

  static const String name = 'UserTasksRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserTasksRouteArgs>();
      return _i15.UserTasksPage(
        key: args.key,
        deskId: args.deskId,
        userId: args.userId,
        titleAB: args.titleAB,
      );
    },
  );
}

class UserTasksRouteArgs {
  const UserTasksRouteArgs({
    this.key,
    required this.deskId,
    required this.userId,
    required this.titleAB,
  });

  final _i19.Key? key;

  final int deskId;

  final int userId;

  final String titleAB;

  @override
  String toString() {
    return 'UserTasksRouteArgs{key: $key, deskId: $deskId, userId: $userId, titleAB: $titleAB}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserTasksRouteArgs) return false;
    return key == other.key &&
        deskId == other.deskId &&
        userId == other.userId &&
        titleAB == other.titleAB;
  }

  @override
  int get hashCode =>
      key.hashCode ^ deskId.hashCode ^ userId.hashCode ^ titleAB.hashCode;
}

/// generated route for
/// [_i16.UsersDesksScreen]
class UsersDesksRoute extends _i18.PageRouteInfo<void> {
  const UsersDesksRoute({List<_i18.PageRouteInfo>? children})
    : super(UsersDesksRoute.name, initialChildren: children);

  static const String name = 'UsersDesksRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i16.UsersDesksScreen();
    },
  );
}

/// generated route for
/// [_i17.UsersDesksWrapperScreen]
class UsersDesksWrapperRoute extends _i18.PageRouteInfo<void> {
  const UsersDesksWrapperRoute({List<_i18.PageRouteInfo>? children})
    : super(UsersDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'UsersDesksWrapperRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return _i18.WrappedRoute(child: const _i17.UsersDesksWrapperScreen());
    },
  );
}
