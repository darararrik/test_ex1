// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:test_ex1/domain/models/task/task_model.dart' as _i17;
import 'package:test_ex1/presentation/routing/pages/my_desks_page/my_tasks_detail_page.dart'
    as _i7;
import 'package:test_ex1/presentation/routing/pages/my_desks_page/my_tasks_page.dart'
    as _i8;
import 'package:test_ex1/presentation/routing/wrappers/auth_wrapper.dart'
    as _i1;
import 'package:test_ex1/presentation/routing/wrappers/followed_wrapper.dart'
    as _i3;
import 'package:test_ex1/presentation/routing/wrappers/my_desks_wrapper.dart'
    as _i6;
import 'package:test_ex1/presentation/routing/wrappers/users_desks_page/users_tasks_wrapper.dart'
    as _i14;
import 'package:test_ex1/presentation/routing/wrappers/users_desks_wrapper.dart'
    as _i13;
import 'package:test_ex1/presentation/screens/followed_tasks/followed_tasks_screen.dart'
    as _i2;
import 'package:test_ex1/presentation/screens/login/login_screen.dart' as _i4;
import 'package:test_ex1/presentation/screens/my_desks/my_desk_screen.dart'
    as _i5;
import 'package:test_ex1/presentation/screens/nav_bar/nav_bar.dart' as _i9;
import 'package:test_ex1/presentation/screens/registration/registration_screen.dart'
    as _i10;
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart'
    as _i11;
import 'package:test_ex1/presentation/screens/users_desks/users_desks_screen.dart'
    as _i12;

/// generated route for
/// [_i1.AuthWrapperScreen]
class AuthWrapperRoute extends _i15.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i15.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return _i15.WrappedRoute(child: const _i1.AuthWrapperScreen());
    },
  );
}

/// generated route for
/// [_i2.FollowedScreen]
class FollowedRoute extends _i15.PageRouteInfo<void> {
  const FollowedRoute({List<_i15.PageRouteInfo>? children})
    : super(FollowedRoute.name, initialChildren: children);

  static const String name = 'FollowedRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i2.FollowedScreen();
    },
  );
}

/// generated route for
/// [_i3.FollowedWrapperScreen]
class FollowedWrapperRoute extends _i15.PageRouteInfo<void> {
  const FollowedWrapperRoute({List<_i15.PageRouteInfo>? children})
    : super(FollowedWrapperRoute.name, initialChildren: children);

  static const String name = 'FollowedWrapperRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return _i15.WrappedRoute(child: const _i3.FollowedWrapperScreen());
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.MyDesksListScreen]
class MyDesksListRoute extends _i15.PageRouteInfo<void> {
  const MyDesksListRoute({List<_i15.PageRouteInfo>? children})
    : super(MyDesksListRoute.name, initialChildren: children);

  static const String name = 'MyDesksListRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i5.MyDesksListScreen();
    },
  );
}

/// generated route for
/// [_i6.MyDesksWrapperScreen]
class MyDesksWrapperRoute extends _i15.PageRouteInfo<void> {
  const MyDesksWrapperRoute({List<_i15.PageRouteInfo>? children})
    : super(MyDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'MyDesksWrapperRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return _i15.WrappedRoute(child: const _i6.MyDesksWrapperScreen());
    },
  );
}

/// generated route for
/// [_i7.MyTaskDetailPage]
class MyTaskDetailRoute extends _i15.PageRouteInfo<MyTaskDetailRouteArgs> {
  MyTaskDetailRoute({
    _i16.Key? key,
    required _i17.TaskModel task,
    List<_i15.PageRouteInfo>? children,
  }) : super(
         MyTaskDetailRoute.name,
         args: MyTaskDetailRouteArgs(key: key, task: task),
         initialChildren: children,
       );

  static const String name = 'MyTaskDetailRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyTaskDetailRouteArgs>();
      return _i7.MyTaskDetailPage(key: args.key, task: args.task);
    },
  );
}

class MyTaskDetailRouteArgs {
  const MyTaskDetailRouteArgs({this.key, required this.task});

  final _i16.Key? key;

  final _i17.TaskModel task;

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
/// [_i8.MyTasksPage]
class MyTasksRoute extends _i15.PageRouteInfo<MyTasksRouteArgs> {
  MyTasksRoute({
    _i16.Key? key,
    required int deskId,
    required String titleAB,
    List<_i15.PageRouteInfo>? children,
  }) : super(
         MyTasksRoute.name,
         args: MyTasksRouteArgs(key: key, deskId: deskId, titleAB: titleAB),
         initialChildren: children,
       );

  static const String name = 'MyTasksRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyTasksRouteArgs>();
      return _i8.MyTasksPage(
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

  final _i16.Key? key;

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
/// [_i9.NavBar]
class NavBarRoute extends _i15.PageRouteInfo<void> {
  const NavBarRoute({List<_i15.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i9.NavBar();
    },
  );
}

/// generated route for
/// [_i10.RegistrationScreen]
class RegistrationRoute extends _i15.PageRouteInfo<void> {
  const RegistrationRoute({List<_i15.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i10.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i11.TaskDetailScreen]
class TaskDetailRoute extends _i15.PageRouteInfo<TaskDetailRouteArgs> {
  TaskDetailRoute({
    _i16.Key? key,
    required _i17.TaskModel task,
    required _i16.VoidCallback onPressedPrayButton,
    List<_i15.PageRouteInfo>? children,
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

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskDetailRouteArgs>();
      return _i11.TaskDetailScreen(
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

  final _i16.Key? key;

  final _i17.TaskModel task;

  final _i16.VoidCallback onPressedPrayButton;

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
/// [_i12.UsersDesksScreen]
class UsersDesksRoute extends _i15.PageRouteInfo<void> {
  const UsersDesksRoute({List<_i15.PageRouteInfo>? children})
    : super(UsersDesksRoute.name, initialChildren: children);

  static const String name = 'UsersDesksRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i12.UsersDesksScreen();
    },
  );
}

/// generated route for
/// [_i13.UsersDesksWrapperScreen]
class UsersDesksWrapperRoute extends _i15.PageRouteInfo<void> {
  const UsersDesksWrapperRoute({List<_i15.PageRouteInfo>? children})
    : super(UsersDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'UsersDesksWrapperRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return _i15.WrappedRoute(child: const _i13.UsersDesksWrapperScreen());
    },
  );
}

/// generated route for
/// [_i14.UsersTasksWrapper]
class UsersTasksWrapper extends _i15.PageRouteInfo<UsersTasksWrapperArgs> {
  UsersTasksWrapper({
    _i16.Key? key,
    required int deskId,
    required String titleAB,
    List<_i15.PageRouteInfo>? children,
  }) : super(
         UsersTasksWrapper.name,
         args: UsersTasksWrapperArgs(
           key: key,
           deskId: deskId,
           titleAB: titleAB,
         ),
         initialChildren: children,
       );

  static const String name = 'UsersTasksWrapper';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UsersTasksWrapperArgs>();
      return _i14.UsersTasksWrapper(
        key: args.key,
        deskId: args.deskId,
        titleAB: args.titleAB,
      );
    },
  );
}

class UsersTasksWrapperArgs {
  const UsersTasksWrapperArgs({
    this.key,
    required this.deskId,
    required this.titleAB,
  });

  final _i16.Key? key;

  final int deskId;

  final String titleAB;

  @override
  String toString() {
    return 'UsersTasksWrapperArgs{key: $key, deskId: $deskId, titleAB: $titleAB}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UsersTasksWrapperArgs) return false;
    return key == other.key &&
        deskId == other.deskId &&
        titleAB == other.titleAB;
  }

  @override
  int get hashCode => key.hashCode ^ deskId.hashCode ^ titleAB.hashCode;
}
