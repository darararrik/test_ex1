import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: "SubsWrapperRoute")
class SubsWrapper extends StatelessWidget implements AutoRouteWrapper {
  const SubsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO:Scaffold?
    return const Scaffold(body: AutoRouter());
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
