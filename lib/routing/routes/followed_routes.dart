import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/routing/app_routing.gr.dart';

abstract class FollowedRoutes {
  static final routes = AutoRoute(
    page: FollowedWrapperRoute.page,
    children: [
      AutoRoute(page: FollowedRoute.page, initial: true),
      AutoRoute(page: TaskDetailRoute.page),
    ],
  );
}
