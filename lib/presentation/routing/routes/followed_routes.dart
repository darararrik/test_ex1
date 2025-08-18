import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/presentation/routing/app_routing.gr.dart';

abstract class FollowedRoutes {
  static final routes = AutoRoute(
    page: FollowedWrapperRoute.page,
    path: 'followed',
    children: [
      AutoRoute(page: FollowedRoute.page, initial: true, path: ''),
      AutoRoute(page: TaskDetailRoute.page, path: 'task-detail'),
    ],
  );
}
