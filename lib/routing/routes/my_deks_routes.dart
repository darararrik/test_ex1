import 'package:auto_route/auto_route.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

abstract class MyDeskRoutes {
  static final routes = AutoRoute(
    page: MyDeskWrapperRoute.page,
    children: [
      AutoRoute(page: DeskListRoute.page, initial: true),
      AutoRoute(page: ColumnRoute.page),
      AutoRoute(page: TaskRoute.page),
    ],
  );
}
