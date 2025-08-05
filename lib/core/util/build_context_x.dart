import 'package:flutter/material.dart';
import 'package:test_ex1/core/util/theme/theme-x/app_palette.dart';
import 'package:test_ex1/core/util/theme/theme-x/app_typography.dart';
import 'package:test_ex1/l10n/app_localizations.dart';

extension BuildContextX on BuildContext {
  AppPalette get appColors => Theme.of(this).extension<AppPalette>()!;
  AppTypography get appTextStyle => Theme.of(this).extension<AppTypography>()!;
  ThemeData get appTheme => Theme.of(this);
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
