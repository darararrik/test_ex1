import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:test_ex1/core/domain/interface/interface.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/l10n/app_localizations.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

extension BuildContextX on BuildContext {
  AppPalette get appColors => Theme.of(this).extension<AppPalette>()!;
  AppTypography get appTextStyle => Theme.of(this).extension<AppTypography>()!;
  ThemeData get appTheme => Theme.of(this);
  AppLocalizations get l10n => AppLocalizations.of(this)!;
  FollowedListNotifier get followedNotifier =>
      FollowedTasksListProvider.of(this);
  DeskListNotifier get deskNotifier => DeskListProvider.of(this);
  UsersDesksListNotifier get userNotifier => UsersDesksListProvider.of(this);

  String? get currentWrapperName {
    final parentRouter = router.parent();
    return parentRouter?.current.name;
  }

  IDesksTasksList? get currentNotifier {
    final tabsRouter = AutoTabsRouter.of(this, watch: true);
    final activeTab = tabsRouter.current.name;

    switch (activeTab) {
      case (MyDesksWrapperRoute.name):
        return DeskListProvider.of(this);
      case (UsersDesksWrapperRoute.name):
        return UsersDesksListProvider.of(this);
      case (FollowedWrapperRoute.name):
        return FollowedTasksListProvider.of(this);
      default:
        return null;
    }
  }

  bool get isMyDesksWrapperRoute =>
      currentWrapperName == MyDesksWrapperRoute.name;
}
