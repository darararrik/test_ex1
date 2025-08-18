import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/presentation/routing/app_routing.gr.dart';

abstract class MyDeskRoutes {
  static final routes = AutoRoute(
    page: MyDesksWrapperRoute.page,
    path: 'my-desks', // путь wrapper-а
    children: [
      AutoRoute(
        page: MyDesksListRoute.page,
        initial: true,
        path: '',
      ), // default - /my-desks
      AutoRoute(page: TasksRoute.page, path: 'tasks'), // /my-desks/tasks
      AutoRoute(
        page: TaskDetailRoute.page,
        path: 'task-detail',
      ), // /my-desks/task-detail
    ],
  );
}
