import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/data/dto/prayer/prayer_dto.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/l10n/app_localizations.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/dialogs/sorry_dialog.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

extension BuildContextX on BuildContext {
  AppPalette get appColors => Theme.of(this).extension<AppPalette>()!;
  AppTypography get appTextStyle => Theme.of(this).extension<AppTypography>()!;
  ThemeData get appTheme => Theme.of(this);
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  String? get currentWrapperName {
    final parentRouter = router.parent();
    return parentRouter?.current.name;
  }

  bool get isMyDesksWrapperRoute =>
      currentWrapperName == MyDesksWrapperRoute.name;

  void handlePray(PrayerModel task, VoidCallback action) {
    if (task.getActualStatus == Status.lessHour) {
      showDialog(context: this, builder: (_) => const SorryDialog());
    } else {
      action();
    }
  }

  void showSnackBar({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        margin: const P(all: S.s16),
        duration: const Duration(seconds: 3),

        action: SnackBarAction(
          label: l10n.ok,
          onPressed: () {
            ScaffoldMessenger.of(this).hideCurrentSnackBar();
          },
        ),
        content: Text(
          message,
          style: appTextStyle.body3.copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
