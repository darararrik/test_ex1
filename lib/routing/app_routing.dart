import 'package:auto_route/auto_route.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';
import 'package:test_ex1/routing/routes/my_deks_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.cupertino(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: AuthWrapperRoute.page,
      initial: true,
      children: [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegistrationRoute.page),
        AutoRoute(
          page: NavBarRoute.page,
          children: [
            MyDeskRoutes.routes,
            AutoRoute(page: UsersDesksRoute.page),
            AutoRoute(page: FollowedRoute.page),
          ],
        ),
      ],
    ),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}
