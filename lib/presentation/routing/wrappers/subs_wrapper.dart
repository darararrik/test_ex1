import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/state/blocs/subscribed_prayer/subscribed_prayer_bloc.dart';

@RoutePage(name: "SubsWrapperRoute")
class SubsWrapper extends StatelessWidget implements AutoRouteWrapper {
  const SubsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SubscribedPrayerBloc(context.read()),
      child: this,
    );
  }
}
