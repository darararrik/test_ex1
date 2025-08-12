import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/routing/app_routing.gr.dart';
import 'package:test_ex1/routing/wrappers/users_desks_wrapper.dart';

abstract class UsersDesksRoutes {
  static final routes = AutoRoute(
    page: UsersDesksWrapperRoute.page,
    children: [
      AutoRoute(page: UsersDesksRoute.page, initial: true),
      AutoRoute(page: TasksRoute.page),
      AutoRoute(page: TaskDetailRoute.page),
    ],
  );
}
