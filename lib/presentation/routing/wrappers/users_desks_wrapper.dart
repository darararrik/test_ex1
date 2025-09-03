import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/state/blocs/user_prayers/user_prayers_bloc.dart';
import 'package:test_ex1/state/blocs/user_prayers_detail/user_prayers_detail_bloc.dart';
import 'package:test_ex1/state/blocs/users_desks/users_desks_bloc.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UsersDesksBloc(context.read())),
        BlocProvider(create: (context) => UserPrayersBloc(context.read())),
        BlocProvider(create: (context) => UserPrayerDetailBloc(context.read())),
      ],
      child: this,
    );
  }
}
