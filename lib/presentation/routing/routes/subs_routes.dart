import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/state/blocs/subscribed_detail/subscribed_detail_bloc.dart';
import 'package:test_ex1/state/blocs/subscribed_prayer/subscribed_prayer_bloc.dart';

abstract class SubsRoutes {
  static final routes = AutoRoute(
    page: SubsWrapperRoute.page,
    children: [
      CustomRoute(
        page: SubsPrayersRoute.page,
        initial: true,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (BuildContext context) {
                  context.read<SubscribedPrayerBloc>().add(
                    const SubscribedPrayerEvent.getSubs(),
                  );
                  return child;
                },
              );
            },
      ),
      CustomRoute(
        page: SubsPrayerDetailRoute.page,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final args = page.routeData.argsAs<SubsPrayerDetailRouteArgs>();
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (BuildContext context) {
                  return BlocProvider<SubscribedDetailBloc>(
                    create: (context) =>
                        SubscribedDetailBloc(context.read())..add(
                          SubscribedDetailEvent.getTaskById(
                            prayerId: args.prayer.id,
                          ),
                        ),
                    child: child,
                  );
                },
              );
            },
      ),
    ],
  );
}
