import 'package:flutter/material.dart';

class AppPalette extends ThemeExtension<AppPalette> {
  final Color gray800;
  final Color gray700;
  final Color gray600;
  final Color gray500;
  final Color gray400;
  final Color gray300;
  final Color gray200;
  final Color gray100;
  final Color error;
  final Color success;
  final Gradient? gradientOrange;
  final Color orangeIndicator;
  final Color blueIndicator;
  final Color yellowIndicator;
  final Color background;
  final BoxShadow shadow1;
  final BoxShadow shadow2;

  AppPalette({
    required this.gray800,
    required this.gray700,
    required this.gray600,
    required this.gray500,
    required this.gray400,
    required this.gray300,
    required this.gray200,
    required this.gray100,
    required this.error,
    required this.success,
    this.gradientOrange,
    required this.orangeIndicator,
    required this.blueIndicator,
    required this.yellowIndicator,
    required this.background,
    required this.shadow1,
    required this.shadow2,
  });

  @override
  ThemeExtension<AppPalette> copyWith({
    Color? gray800,
    Color? gray700,
    Color? gray600,
    Color? gray500,
    Color? gray400,
    Color? gray300,
    Color? gray200,
    Color? gray100,
    Color? error,
    Color? success,
    Gradient? gradientOrange,
    Color? orangeIndicator,
    Color? blueIndicator,
    Color? yellowIndicator,
    Color? background,
    BoxShadow? shadow1,
    BoxShadow? shadow2,
  }) {
    return AppPalette(
      gray800: gray800 ?? this.gray800,
      gray700: gray700 ?? this.gray700,
      gray600: gray600 ?? this.gray600,
      gray500: gray500 ?? this.gray500,
      gray400: gray400 ?? this.gray400,
      gray300: gray300 ?? this.gray300,
      gray200: gray200 ?? this.gray200,
      gray100: gray100 ?? this.gray100,
      error: error ?? this.error,
      success: success ?? this.success,
      orangeIndicator: orangeIndicator ?? this.orangeIndicator,
      blueIndicator: blueIndicator ?? this.blueIndicator,
      yellowIndicator: yellowIndicator ?? this.yellowIndicator,
      gradientOrange: gradientOrange ?? this.gradientOrange,
      background: background ?? this.background,
      shadow1: shadow1 ?? this.shadow1,
      shadow2: shadow2 ?? this.shadow2,
    );
  }

  @override
  ThemeExtension<AppPalette> lerp(
    covariant ThemeExtension<AppPalette>? other,
    double t,
  ) {
    if (other is! AppPalette) {
      return this;
    }
    return AppPalette(
      gray800: Color.lerp(gray800, other.gray800, t)!,
      gray700: Color.lerp(gray700, other.gray700, t)!,
      gray600: Color.lerp(gray600, other.gray600, t)!,
      gray500: Color.lerp(gray500, other.gray500, t)!,
      gray400: Color.lerp(gray400, other.gray400, t)!,
      gray300: Color.lerp(gray300, other.gray300, t)!,
      gray200: Color.lerp(gray200, other.gray200, t)!,
      gray100: Color.lerp(gray100, other.gray100, t)!,
      error: Color.lerp(error, other.error, t)!,
      success: Color.lerp(success, other.success, t)!,
      orangeIndicator: Color.lerp(orangeIndicator, other.orangeIndicator, t)!,
      blueIndicator: Color.lerp(blueIndicator, other.blueIndicator, t)!,
      yellowIndicator: Color.lerp(yellowIndicator, other.yellowIndicator, t)!,
      background: Color.lerp(background, other.background, t)!,
      shadow1: BoxShadow.lerp(shadow1, other.shadow1, t)!,
      shadow2: BoxShadow.lerp(shadow2, other.shadow2, t)!,
    );
  }
}
