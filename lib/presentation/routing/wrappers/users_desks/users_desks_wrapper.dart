import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ex1/domain/blocs/users_desks/users_desks_bloc.dart';

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
    return BlocProvider(
      create: (context) => UsersDesksBloc(context.read()),
      child: this,
    );
  }
}
