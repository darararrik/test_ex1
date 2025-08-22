import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ex1/domain/blocs/followed/followed_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/followed_task_detail/followed_detail_bloc.dart';

import 'package:test_ex1/presentation/pages/followed_page/followed_page.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';

abstract class FollowedRoutes {
  static final routes = AutoRoute(
    page: FollowedWrapperRoute.page,
    children: [
      AutoRoute(page: FollowedRoute.page, initial: true),
      CustomRoute(
        page: FollowedTaskDetailRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<FollowedTaskDetailRouteArgs>();
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (_) => BlocProvider<FollowedDetailBloc>(
                  create: (context) => FollowedDetailBloc(context.read())
                    ..add(
                      FollowedDetailEvent.getTaskById(
                        args.task.id,
                        args.task.deskId,
                        args.task.userId,
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
