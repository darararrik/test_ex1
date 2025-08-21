import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ex1/domain/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';

@RoutePage()
class MyDesksWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const MyDesksWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MyDesksBloc(context.read())),
        BlocProvider(create: (context) => MyTasksBloc(context.read())),
      ],
      child: this,
    );
  }
}
