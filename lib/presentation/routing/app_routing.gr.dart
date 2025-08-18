// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/material.dart' as _i14;

import 'package:auto_route/auto_route.dart' as _i13;

import 'package:test_ex1/core/domain/models/task/task_model.dart' as _i15;
import 'package:test_ex1/feature/login/presentation/login_screen.dart' as _i4;
import 'package:test_ex1/feature/nav_bar/nav_bar.dart' as _i7;
import 'package:test_ex1/feature/tasks/presentation/tasks_screen.dart' as _i10;
import 'package:test_ex1/routing/wrappers/auth_wrapper.dart' as _i1;
import 'package:test_ex1/routing/wrappers/followed_wrapper.dart' as _i3;
import 'package:test_ex1/routing/wrappers/my_desks_wrapper.dart' as _i6;
import 'package:test_ex1/routing/wrappers/users_desks_wrapper.dart' as _i12;

import 'package:test_ex1/feature/desk_list/presentation/desk_list_screen.dart'
    as _i5;
import 'package:test_ex1/feature/followed/presentation/followed_screen.dart'
    as _i2;
import 'package:test_ex1/feature/registration/presentation/registration_screen.dart'
    as _i8;
import 'package:test_ex1/feature/task_detail/presentation/task_detail_screen.dart'
    as _i9;
import 'package:test_ex1/feature/users_desks/presentation/users_desks_screen.dart'
    as _i11;

/// generated route for
/// [_i1.AuthWrapperScreen]
class AuthWrapperRoute extends _i13.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i13.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return _i13.WrappedRoute(child: const _i1.AuthWrapperScreen());
    },
  );
}

/// generated route for
/// [_i2.FollowedScreen]
class FollowedRoute extends _i13.PageRouteInfo<void> {
  const FollowedRoute({List<_i13.PageRouteInfo>? children})
    : super(FollowedRoute.name, initialChildren: children);

  static const String name = 'FollowedRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.FollowedScreen();
    },
  );
}

/// generated route for
/// [_i3.FollowedWrapperScreen]
class FollowedWrapperRoute extends _i13.PageRouteInfo<void> {
  const FollowedWrapperRoute({List<_i13.PageRouteInfo>? children})
    : super(FollowedWrapperRoute.name, initialChildren: children);

  static const String name = 'FollowedWrapperRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return _i13.WrappedRoute(child: const _i3.FollowedWrapperScreen());
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.MyDesksListScreen]
class MyDesksListRoute extends _i13.PageRouteInfo<void> {
  const MyDesksListRoute({List<_i13.PageRouteInfo>? children})
    : super(MyDesksListRoute.name, initialChildren: children);

  static const String name = 'MyDesksListRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i5.MyDesksListScreen();
    },
  );
}

/// generated route for
/// [_i6.MyDesksWrapperScreen]
class MyDesksWrapperRoute extends _i13.PageRouteInfo<void> {
  const MyDesksWrapperRoute({List<_i13.PageRouteInfo>? children})
    : super(MyDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'MyDesksWrapperRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return _i13.WrappedRoute(child: const _i6.MyDesksWrapperScreen());
    },
  );
}

/// generated route for
/// [_i7.NavBar]
class NavBarRoute extends _i13.PageRouteInfo<void> {
  const NavBarRoute({List<_i13.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i7.NavBar();
    },
  );
}

/// generated route for
/// [_i8.RegistrationScreen]
class RegistrationRoute extends _i13.PageRouteInfo<void> {
  const RegistrationRoute({List<_i13.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i9.TaskDetailScreen]
class TaskDetailRoute extends _i13.PageRouteInfo<TaskDetailRouteArgs> {
  TaskDetailRoute({
    _i14.Key? key,
    required _i15.TaskModel task,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         TaskDetailRoute.name,
         args: TaskDetailRouteArgs(key: key, task: task),
         initialChildren: children,
       );

  static const String name = 'TaskDetailRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskDetailRouteArgs>();
      return _i9.TaskDetailScreen(key: args.key, task: args.task);
    },
  );
}

class TaskDetailRouteArgs {
  const TaskDetailRouteArgs({this.key, required this.task});

  final _i14.Key? key;

  final _i15.TaskModel task;

  @override
  String toString() {
    return 'TaskDetailRouteArgs{key: $key, task: $task}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TaskDetailRouteArgs) return false;
    return key == other.key && task == other.task;
  }

  @override
  int get hashCode => key.hashCode ^ task.hashCode;
}

/// generated route for
/// [_i10.TasksScreen]
class TasksRoute extends _i13.PageRouteInfo<void> {
  const TasksRoute({List<_i13.PageRouteInfo>? children})
    : super(TasksRoute.name, initialChildren: children);

  static const String name = 'TasksRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.TasksScreen();
    },
  );
}

/// generated route for
/// [_i11.UsersDesksScreen]
class UsersDesksRoute extends _i13.PageRouteInfo<void> {
  const UsersDesksRoute({List<_i13.PageRouteInfo>? children})
    : super(UsersDesksRoute.name, initialChildren: children);

  static const String name = 'UsersDesksRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.UsersDesksScreen();
    },
  );
}

/// generated route for
/// [_i12.UsersDesksWrapperScreen]
class UsersDesksWrapperRoute extends _i13.PageRouteInfo<void> {
  const UsersDesksWrapperRoute({List<_i13.PageRouteInfo>? children})
    : super(UsersDesksWrapperRoute.name, initialChildren: children);

  static const String name = 'UsersDesksWrapperRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return _i13.WrappedRoute(child: const _i12.UsersDesksWrapperScreen());
    },
  );
}
