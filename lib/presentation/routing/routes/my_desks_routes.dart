import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/state/blocs/auth/auth_bloc.dart';
import 'package:test_ex1/state/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/state/blocs/my_prayers/my_prayers_bloc.dart';
import 'package:test_ex1/state/blocs/my_prayers_detail/my_prayers_detail_bloc.dart';

abstract class MyDesksRoutes {
  static final routes = AutoRoute(
    page: MyDesksWrapperRoute.page,
    children: [
      CustomRoute(
        page: MyColumnsRoute.page,
        initial: true,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (_) {
                  context.read<AuthBloc>().add(const AuthEvent.check());
                  return BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        logined: () => context.read<MyDesksBloc>().add(
                          const MyDesksEvent.getMyColumns(),
                        ),
                      );
                    },
                    child: child,
                  );
                },
              );
            },
      ),
      CustomRoute(
        page: MyPrayersRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<MyPrayersRouteArgs>();
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (_) {
                  context.read<MyPrayersBloc>().add(
                    MyPrayersEvent.getMyPrayersByDeskId(
                      columnId: args.columnId,
                    ),
                  );
                  return child;
                },
              );
            },
      ),
      CustomRoute(
        page: MyPrayerDetailRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<MyPrayerDetailRouteArgs>();
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (_) {
                  context.read<MyPrayersDetailBloc>().add(
                    MyPrayersDetailEvent.getTaskById(prayerId: args.prayer.id),
                  );
                  return child;
                },
              );
            },
      ),
    ],
  );
}
