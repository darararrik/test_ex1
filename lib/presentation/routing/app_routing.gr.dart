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

import 'package:test_ex1/presentation/screens/login/login_screen.dart' as _i4;
import 'package:test_ex1/presentation/screens/nav_bar/nav_bar.dart' as _i9;

import 'package:test_ex1/presentation/routing/wrappers/auth_wrapper.dart'
    as _i1;
import 'package:test_ex1/presentation/routing/wrappers/followed_tasks/followed_wrapper.dart'
    as _i3;
import 'package:test_ex1/presentation/routing/wrappers/my_desks/my_desks_wrapper.dart'
    as _i6;
import 'package:test_ex1/presentation/routing/wrappers/my_desks/my_tasks_detail_wrapper.dart'
    as _i7;
import 'package:test_ex1/presentation/routing/wrappers/my_desks/my_tasks_wrapper.dart'
    as _i8;
import 'package:test_ex1/presentation/routing/wrappers/users_desks/users_desks_wrapper.dart'
    as _i12;
import 'package:test_ex1/presentation/screens/followed_tasks/followed_tasks_screen.dart'
    as _i2;
import 'package:test_ex1/presentation/screens/my_desks/my_desk_screen.dart'
    as _i5;
import 'package:test_ex1/presentation/screens/registration/registration_screen.dart'
    as _i10;
import 'package:test_ex1/presentation/screens/users_desks/users_desks_screen.dart'
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
/// [_i7.MyTaskDetailPage]
class MyTaskDetailRoute extends _i13.PageRouteInfo<MyTaskDetailRouteArgs> {
  MyTaskDetailRoute({
    _i14.Key? key,
    required int taskId,
    required int deskId,
    required String titleAB,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         MyTaskDetailRoute.name,
         args: MyTaskDetailRouteArgs(
           key: key,
           taskId: taskId,
           deskId: deskId,
           titleAB: titleAB,
         ),
         initialChildren: children,
       );

  static const String name = 'MyTaskDetailRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyTaskDetailRouteArgs>();
      return _i7.MyTaskDetailPage(
        key: args.key,
        taskId: args.taskId,
        deskId: args.deskId,
        titleAB: args.titleAB,
      );
    },
  );
}

class MyTaskDetailRouteArgs {
  const MyTaskDetailRouteArgs({
    this.key,
    required this.taskId,
    required this.deskId,
    required this.titleAB,
  });

  final _i14.Key? key;

  final int taskId;

  final int deskId;

  final String titleAB;

  @override
  String toString() {
    return 'MyTaskDetailRouteArgs{key: $key, taskId: $taskId, deskId: $deskId, titleAB: $titleAB}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MyTaskDetailRouteArgs) return false;
    return key == other.key &&
        taskId == other.taskId &&
        deskId == other.deskId &&
        titleAB == other.titleAB;
  }

  @override
  int get hashCode =>
      key.hashCode ^ taskId.hashCode ^ deskId.hashCode ^ titleAB.hashCode;
}

/// generated route for
/// [_i8.MyTasksWrapper]
class MyTasksWrapper extends _i13.PageRouteInfo<MyTasksWrapperArgs> {
  MyTasksWrapper({
    _i14.Key? key,
    required int deskId,
    required String titleAB,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         MyTasksWrapper.name,
         args: MyTasksWrapperArgs(key: key, deskId: deskId, titleAB: titleAB),
         initialChildren: children,
       );

  static const String name = 'MyTasksWrapper';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyTasksWrapperArgs>();
      return _i8.MyTasksWrapper(
        key: args.key,
        deskId: args.deskId,
        titleAB: args.titleAB,
      );
    },
  );
}

class MyTasksWrapperArgs {
  const MyTasksWrapperArgs({
    this.key,
    required this.deskId,
    required this.titleAB,
  });

  final _i14.Key? key;

  final int deskId;

  final String titleAB;

  @override
  String toString() {
    return 'MyTasksWrapperArgs{key: $key, deskId: $deskId, titleAB: $titleAB}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MyTasksWrapperArgs) return false;
    return key == other.key &&
        deskId == other.deskId &&
        titleAB == other.titleAB;
  }

  @override
  int get hashCode => key.hashCode ^ deskId.hashCode ^ titleAB.hashCode;
}

/// generated route for
/// [_i9.NavBar]
class NavBarRoute extends _i13.PageRouteInfo<void> {
  const NavBarRoute({List<_i13.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.NavBar();
    },
  );
}

/// generated route for
/// [_i10.RegistrationScreen]
class RegistrationRoute extends _i13.PageRouteInfo<void> {
  const RegistrationRoute({List<_i13.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.RegistrationScreen();
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
