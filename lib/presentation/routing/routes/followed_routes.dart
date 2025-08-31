import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/subscribed_detail_bloc/subscribed_detail_bloc.dart';
import 'package:test_ex1/domain/blocs/subscribed_prayer_bloc/subscribed_prayer_bloc.dart';
import 'package:test_ex1/presentation/pages/followed_page/followed_page.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';

abstract class FollowedRoutes {
  static final routes = AutoRoute(
    page: FollowedWrapperRoute.page,
    children: [
      // AutoRoute(page: FollowedRoute.page, initial: true),
      CustomRoute(
        page: FollowedRoute.page,
        initial: true,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (_) {
                  context.read<SubscribedPrayerBloc>().add(
                    const SubscribedPrayerEvent.getSubs(),
                  );

                  return child;
                },
              );
            },
      ),
      CustomRoute(
        page: FollowedTaskDetailRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<FollowedTaskDetailRouteArgs>();
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (_) => BlocProvider<SubscribedDetailBloc>(
                  create: (context) => SubscribedDetailBloc(context.read())
                    ..add(
                      SubscribedDetailEvent.getTaskById(prayerId: args.task.id),
                    ),
                  child: child,
                ),
              );
            },
      ),
    ],
  );
}
