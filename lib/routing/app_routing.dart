import 'package:auto_route/auto_route.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.cupertino(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegistrationRoute.page),
    AutoRoute(
      page: NavBarRoute.page,
      initial: true,
      children: [
        AutoRoute(page: MyDockRoute.page),
        AutoRoute(page: UsersDesksRoute.page),
        AutoRoute(page: FollowedRoute.page),
      ],
    ),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}
