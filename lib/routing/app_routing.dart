import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/routing/app_routing.gr.dart';
import 'package:test_ex1/routing/routes/routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: NavBarRoute.page,
      initial: true,
      children: [
        MyDeskRoutes.routes,
        UsersDesksRoutes.routes,
        FollowedRoutes.routes,
      ],
    ),
    AutoRoute(
      page: AuthWrapperRoute.page,
      children: [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegistrationRoute.page),
      ],
    ),
  ];
}
