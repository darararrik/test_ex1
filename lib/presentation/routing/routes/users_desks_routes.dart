import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/routing/wrappers/users_desks_wrapper.dart';
import 'package:test_ex1/state/blocs/user_columns/user_columns_bloc.dart';
import 'package:test_ex1/state/blocs/user_prayers/user_prayers_bloc.dart';
import 'package:test_ex1/state/blocs/user_prayers_detail/user_prayers_detail_bloc.dart';
import 'package:test_ex1/state/blocs/users_desks/users_desks_bloc.dart';

abstract class UsersDesksRoutes {
  static final routes = AutoRoute(
    page: UsersDesksWrapperRoute.page,
    children: [
      CustomRoute(
        initial: true,
        page: UsersDesksRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
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
        page: UserColumnsRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<UserColumnsRouteArgs>();
              return CupertinoPageRoute(
                settings: page,
                builder: (_) {
                  return BlocProvider(
                    create: (context) => UserColumnsBloc(context.read())
                      ..add(
                        UserColumnsEvent.getUserColumns(deskId: args.columnId),
                      ),
                    child: child,
                  );
                },
              );
            },
      ),
      CustomRoute(
        page: UserPrayersRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<UserPrayersRouteArgs>();
              return CupertinoPageRoute<T>(
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
        page: UserPrayerDetailRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<UserPrayerDetailRouteArgs>();
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
