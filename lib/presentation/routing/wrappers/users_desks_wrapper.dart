import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class UsersDesksWrapperScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const UsersDesksWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AutoRouter());
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
