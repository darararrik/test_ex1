import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/user_desks/user_desks_bloc.dart';
import 'package:test_ex1/domain/blocs/user_task_detail/user_task_detail_bloc.dart';
import 'package:test_ex1/domain/blocs/user_tasks/user_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/users_desks/users_desks_bloc.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/routing/wrappers/users_desks_wrapper.dart';
import 'package:test_ex1/presentation/screens/user_desks/user_desks_screen.dart';

abstract class UsersDesksRoutes {
  static final routes = AutoRoute(
    page: UsersDesksWrapperRoute.page,
    children: [
      AutoRoute(page: UsersDesksRoute.page, initial: true),
      CustomRoute(
        page: UserDesksRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<UserDesksRouteArgs>();
              return CupertinoPageRoute<T>(
                settings: page,
                builder: (_) {
                  context.read<UserDesksBloc>().add(
                    UserDesksEvent.getDesksByUserId(args.userId),
                  );
                  return child;
                },
              );
            },
      ),
      CustomRoute(
        page: UserTasksRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<UserTasksRouteArgs>();
              return CupertinoPageRoute(
                settings: page,
                builder: (_) {
                  context.read<UserTasksBloc>().add(
                    UserTasksEvent.getTasksByDeskId(args.userId, args.deskId),
                  );
                  return child;
                },
              );
            },
      ),
      CustomRoute(
        page: UserTaskDetailRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<UserTaskDetailRouteArgs>();
              return CupertinoPageRoute<T>(
                settings: page,
                builder: (_) {
                  context.read<UserTaskDetailBloc>().add(
                    UserTaskDetailEvent.getTaskById(
                      args.task.id,
                      args.task.deskId,
                      args.task.userId,
                    ),
                  );
                  return child;
                },
              );
            },
      ),
    ],
  );
}
