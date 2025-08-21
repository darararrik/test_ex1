import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ex1/domain/blocs/followed/bloc/followed_tasks_bloc.dart';

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
    return BlocProvider(create: (context) => FollowedTasksBloc(), child: this);
  }
}
