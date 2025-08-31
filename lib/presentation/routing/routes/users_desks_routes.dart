import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/users_desks/users_desks_bloc.dart';
import 'package:test_ex1/domain/blocs/user_prayers_detail/user_prayers_detail_bloc.dart';
import 'package:test_ex1/domain/blocs/user_prayers/user_prayers_bloc.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/routing/wrappers/users_desks_wrapper.dart';
import 'package:test_ex1/presentation/screens/user_columns/user_columns_screen.dart';

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
                  context.read<UsersDesksBloc>().add(
                    const UsersDesksEvent.getUsersDesks(),
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
                  context.read<UserPrayersBloc>().add(
                    UserPrayersEvent.getPrayersByColumnId(
                      columnId: args.columnId,
                    ),
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
                  context.read<UserPrayerDetailBloc>().add(
                    UserPrayerDetailEvent.getPrayerById(
                      prayerId: args.prayer.id,
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
