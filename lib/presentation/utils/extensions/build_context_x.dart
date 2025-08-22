import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/blocs.dart';
import 'package:test_ex1/domain/interfaces/interface.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/presentation/l10n/app_localizations.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/dialogs/sorry_dialog.dart';

extension BuildContextX on BuildContext {
  AppPalette get appColors => Theme.of(this).extension<AppPalette>()!;
  AppTypography get appTextStyle => Theme.of(this).extension<AppTypography>()!;
  ThemeData get appTheme => Theme.of(this);
  AppLocalizations get l10n => AppLocalizations.of(this)!;
  MyDesksBloc get deskBloc => read<MyDesksBloc>();
  UsersDesksBloc get usersBloc => read<UsersDesksBloc>();
  FollowedTasksBloc get followedBloc => read<FollowedTasksBloc>();

  String? get currentWrapperName {
    final parentRouter = router.parent();
    return parentRouter?.current.name;
  }

  BlocBase? get currentBloc {
    final tabsRouter = AutoTabsRouter.of(this, watch: true);
    switch (tabsRouter.current.name) {
      case MyDesksWrapperRoute.name:
        return deskBloc;
      case UsersDesksWrapperRoute.name:
        return usersBloc;
      case FollowedWrapperRoute.name:
        return followedBloc;
      default:
        return null;
    }
  }

  bool get isMyDesksWrapperRoute =>
      currentWrapperName == MyDesksWrapperRoute.name;
  void handlePray(TaskModel task, VoidCallback action) {
    if (task.getActualStatus == Status.lessHour) {
      showDialog(context: this, builder: (_) => const SorryDialog());
    } else {
      action();
    }
  }
}
