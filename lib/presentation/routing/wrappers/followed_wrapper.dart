import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_prayers/my_prayers_bloc.dart';
import 'package:test_ex1/domain/blocs/subscribed_prayer_bloc/subscribed_prayer_bloc.dart';

@RoutePage()
class FollowedWrapperScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const FollowedWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AutoRouter());
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
