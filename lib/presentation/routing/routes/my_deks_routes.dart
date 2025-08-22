import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_task_detail/my_tasks_detail_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:test_ex1/presentation/pages/my_desks_page/my_tasks_detail_page.dart';
import 'package:test_ex1/presentation/pages/my_desks_page/my_tasks_page.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart';

abstract class MyDeskRoutes {
  static final routes = AutoRoute(
    page: MyDesksWrapperRoute.page,
    children: [
      AutoRoute(page: MyDesksListRoute.page, initial: true),
      CustomRoute(
        page: MyTasksRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<MyTasksRouteArgs>();
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (_) => BlocProvider<MyTasksBloc>.value(
                  value: context.read()
                    ..add(MyTasksEvent.getTasksByDeskId(args.deskId)),
                  child: child,
                ),
              );
            },
      ),
      CustomRoute(
        page: MyTaskDetailRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<MyTaskDetailRouteArgs>();
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (_) => BlocProvider<MyTasksDetailBloc>.value(
                  value: context.read()
                    ..add(
                      MyTasksDetailEvent.getTaskById(
                        args.task.id,
                        args.task.deskId,
                      ),
                    ),
                  child: child,
                ),
              );
            },
      ),
    ],
  );
}
