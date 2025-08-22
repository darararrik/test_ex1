import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/auth/auth_bloc.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';

@RoutePage()
class AuthWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const AuthWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          logined: () => context.replaceRoute(const NavBarRoute()),
          orElse: () => context.replaceRoute(const AuthWrapperRoute()),
        );
      },
      child: this,
    );
  }
}
