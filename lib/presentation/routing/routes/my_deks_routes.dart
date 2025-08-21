import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/presentation/routing/app_routing.gr.dart';

abstract class MyDeskRoutes {
  static final routes = AutoRoute(
    page: MyDesksWrapperRoute.page,
    path: 'my-desks',
    children: [
      AutoRoute(page: MyDesksListRoute.page, initial: true, path: ''),
      AutoRoute(page: MyTasksWrapper.page),
      AutoRoute(page: MyTaskDetailRoute.page),
    ],
  );
}
