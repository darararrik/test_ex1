// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:collection/collection.dart' as _i14;
import 'package:flutter/material.dart' as _i12;
import 'package:test_ex1/core/domain/models/task_model.dart' as _i13;
import 'package:test_ex1/feature/desk_list/presentation/desk_list_screen.dart'
    as _i2;
import 'package:test_ex1/feature/followed/presentation/followed_screen.dart'
    as _i3;
import 'package:test_ex1/feature/login/presentation/login_screen.dart' as _i4;
import 'package:test_ex1/feature/nav_bar/nav_bar.dart' as _i6;
import 'package:test_ex1/feature/registration/presentation/registration_screen.dart'
    as _i7;
import 'package:test_ex1/feature/task_detail/presentation/task_detail_screen.dart'
    as _i8;
import 'package:test_ex1/feature/tasks/presentation/tasks_screen.dart' as _i9;
import 'package:test_ex1/feature/users_desks/presentation/users_desks_screen.dart'
    as _i10;
import 'package:test_ex1/routing/wrappers/auth_wrapper.dart' as _i1;
import 'package:test_ex1/routing/wrappers/my_desk_wrapper.dart' as _i5;

/// generated route for
/// [_i1.AuthWrapperScreen]
class AuthWrapperRoute extends _i11.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i11.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return _i11.WrappedRoute(child: const _i1.AuthWrapperScreen());
    },
  );
}

/// generated route for
/// [_i2.DeskListScreen]
class DeskListRoute extends _i11.PageRouteInfo<void> {
  const DeskListRoute({List<_i11.PageRouteInfo>? children})
    : super(DeskListRoute.name, initialChildren: children);

  static const String name = 'DeskListRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.DeskListScreen();
    },
  );
}

/// generated route for
/// [_i3.FollowedScreen]
class FollowedRoute extends _i11.PageRouteInfo<void> {
  const FollowedRoute({List<_i11.PageRouteInfo>? children})
    : super(FollowedRoute.name, initialChildren: children);

  static const String name = 'FollowedRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.FollowedScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.MyDeskWrapperScreen]
class MyDeskWrapperRoute extends _i11.PageRouteInfo<void> {
  const MyDeskWrapperRoute({List<_i11.PageRouteInfo>? children})
    : super(MyDeskWrapperRoute.name, initialChildren: children);

  static const String name = 'MyDeskWrapperRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return _i11.WrappedRoute(child: const _i5.MyDeskWrapperScreen());
    },
  );
}

/// generated route for
/// [_i6.NavBar]
class NavBarRoute extends _i11.PageRouteInfo<void> {
  const NavBarRoute({List<_i11.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i6.NavBar();
    },
  );
}

/// generated route for
/// [_i7.RegistrationScreen]
class RegistrationRoute extends _i11.PageRouteInfo<void> {
  const RegistrationRoute({List<_i11.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i8.TaskDetailScreen]
class TaskDetailRoute extends _i11.PageRouteInfo<TaskDetailRouteArgs> {
  TaskDetailRoute({
    _i12.Key? key,
    required _i13.TaskModel task,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         TaskDetailRoute.name,
         args: TaskDetailRouteArgs(key: key, task: task),
         initialChildren: children,
       );

  static const String name = 'TaskDetailRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskDetailRouteArgs>();
      return _i8.TaskDetailScreen(key: args.key, task: args.task);
    },
  );
}

class TaskDetailRouteArgs {
  const TaskDetailRouteArgs({this.key, required this.task});

  final _i12.Key? key;

  final _i13.TaskModel task;

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
/// [_i9.TasksScreen]
class TasksRoute extends _i11.PageRouteInfo<TasksRouteArgs> {
  TasksRoute({
    _i12.Key? key,
    required List<_i13.TaskModel> tasksList,
    required String title,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         TasksRoute.name,
         args: TasksRouteArgs(key: key, tasksList: tasksList, title: title),
         initialChildren: children,
       );

  static const String name = 'TasksRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TasksRouteArgs>();
      return _i9.TasksScreen(
        key: args.key,
        tasksList: args.tasksList,
        title: args.title,
      );
    },
  );
}

class TasksRouteArgs {
  const TasksRouteArgs({
    this.key,
    required this.tasksList,
    required this.title,
  });

  final _i12.Key? key;

  final List<_i13.TaskModel> tasksList;

  final String title;

  @override
  String toString() {
    return 'TasksRouteArgs{key: $key, tasksList: $tasksList, title: $title}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TasksRouteArgs) return false;
    return key == other.key &&
        const _i14.ListEquality().equals(tasksList, other.tasksList) &&
        title == other.title;
  }

  @override
  int get hashCode =>
      key.hashCode ^ const _i14.ListEquality().hash(tasksList) ^ title.hashCode;
}

/// generated route for
/// [_i10.UsersDesksScreen]
class UsersDesksRoute extends _i11.PageRouteInfo<void> {
  const UsersDesksRoute({List<_i11.PageRouteInfo>? children})
    : super(UsersDesksRoute.name, initialChildren: children);

  static const String name = 'UsersDesksRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.UsersDesksScreen();
    },
  );
}
