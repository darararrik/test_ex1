import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_colors.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_size.dart';
import 'package:test_ex1/core/constants/app_text_style.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[appColors, appTextStyle],
    primaryColor: appColors.gray800,
    scaffoldBackgroundColor: appColors.background,
    dialogTheme: DialogThemeData(backgroundColor: appColors.gray100),

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
      iconSize: AppSize.s24,
      backgroundColor: appColors.gray800,
      foregroundColor: appColors.gray100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRounding.r95),
      ),
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
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
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
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRounding.r18),
          ),
        ),
        minimumSize: WidgetStateProperty.all(
          const Size.fromHeight(AppSize.s54),
        ),
        elevation: WidgetStateProperty.all(0),
        textStyle: WidgetStateProperty.all(appTextStyle.body1),
      ),
    ),
  );
}
