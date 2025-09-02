import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:test_ex1/data/utils/app_defaults.dart' show AppDefaults;

import 'package:test_ex1/presentation/constants/constants.dart';

class AppTheme {
  static final skeletonTheme = SkeletonizerConfigData(
    effect: ShimmerEffect(
      baseColor: appColors.gray100,
      highlightColor: appColors.skeletonOrange,
    ),
    switchAnimationConfig: const SwitchAnimationConfig(),
    enableSwitchAnimation: true,
  );
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    extensions: [appColors, appTextStyle, skeletonTheme],
    primaryColor: appColors.gray800,
    scaffoldBackgroundColor: appColors.background,
    dialogTheme: DialogThemeData(backgroundColor: appColors.gray100),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: appColors.gray200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(R.r30),
      ),
      actionTextColor: appColors.orangeIndicator,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: appColors.gray600),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: appColors.gray600),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: appColors.gray800),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: appColors.error),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: appColors.error),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      iconSize: S.s24,
      backgroundColor: appColors.gray800,
      foregroundColor: appColors.gray100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(R.r95)),
    ),
    dividerTheme: DividerThemeData(color: appColors.gray500, thickness: 1),
    appBarTheme: AppBarTheme(
      backgroundColor: appColors.background,
      titleTextStyle: appTextStyle.headline1,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: appColors.gray100,
      indicatorColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return appColors.gray500;
          }
          if (states.contains(WidgetState.pressed)) {
            return appColors.gray700; // Цвет при нажатии
          }
          return appColors.gray800; // Обычный цвет
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          return appColors.gray100;
        }),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(R.r18)),
        ),
        minimumSize: WidgetStateProperty.all(const Size.fromHeight(Sz.s54)),
        elevation: WidgetStateProperty.all(0),
        textStyle: WidgetStateProperty.all(appTextStyle.body1),
      ),
    ),
  );
}
