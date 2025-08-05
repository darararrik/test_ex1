import 'package:flutter/material.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;
  final TextStyle headline4;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;
  final TextStyle body4;
  final TextStyle caption;
  AppTypography({
    required this.title1,
    required this.title2,
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.headline4,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
    required this.caption,
  });

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? headline4,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
    TextStyle? body4,
    TextStyle? caption,
  }) {
    return AppTypography(
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      headline3: headline3 ?? this.headline3,
      headline4: headline4 ?? this.headline4,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
      body4: body4 ?? this.body4,
      caption: caption ?? this.caption,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other is! AppTypography) {
      return copyWith(
        title1: TextStyle.lerp(title1, null, t)!,
        title2: TextStyle.lerp(title2, null, t)!,
        headline1: TextStyle.lerp(headline1, null, t)!,
        headline2: TextStyle.lerp(headline2, null, t)!,
        headline3: TextStyle.lerp(headline3, null, t)!,
        headline4: TextStyle.lerp(headline4, null, t)!,
        body1: TextStyle.lerp(body1, null, t)!,
        body2: TextStyle.lerp(body2, null, t)!,
        body3: TextStyle.lerp(body3, null, t)!,
        body4: TextStyle.lerp(body4, null, t)!,
        caption: TextStyle.lerp(caption, null, t)!,
      );
    }
    return AppTypography(
      title1: TextStyle.lerp(title1, other.title1, t)!,
      title2: TextStyle.lerp(title2, other.title2, t)!,
      headline1: TextStyle.lerp(headline1, other.headline1, t)!,
      headline2: TextStyle.lerp(headline2, other.headline2, t)!,
      headline3: TextStyle.lerp(headline3, other.headline3, t)!,
      headline4: TextStyle.lerp(headline4, other.headline4, t)!,
      body1: TextStyle.lerp(body1, other.body1, t)!,
      body2: TextStyle.lerp(body2, other.body2, t)!,
      body3: TextStyle.lerp(body3, other.body3, t)!,
      body4: TextStyle.lerp(body4, other.body4, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
    );
  }
}
