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

  bool get isMyDesksWrapperRoute {
    final parentRouter = router.parent();
    if (parentRouter == null) return false;
    return parentRouter.current.name == MyDesksWrapperRoute.name;
  }

  IDesksTasksList get currentDeskNotifier {
    return isMyDesksWrapperRoute
        ? DeskListProvider.of(this)
        : UsersDesksListProvider.of(this);
  }
}
