import 'package:flutter/material.dart';

import 'package:test_ex1/presentation/utils/theme/theme_x/app_palette.dart';

final AppPalette appColors = AppPalette(
  gray800: const Color(0xFF2A2A2A),
  gray700: const Color(0xFF696969),
  gray600: const Color(0xFFCFCFCF),
  gray500: const Color(0xFFEBEBEB),
  gray400: const Color(0xFFF2F2F2),
  gray300: const Color(0xFFF5F5F5),
  gray200: const Color(0xFFFBFBFB),
  gray100: const Color(0xFFFFFFFF),
  error: const Color(0xFFC2534C),
  success: const Color(0xFFC2534C),
  orangeIndicator: const Color(0xFFDE6352),
  blueIndicator: const Color(0xFF4757B0),
  yellowIndicator: const Color(0xFFBFAF3A),
  gradientOrange: const LinearGradient(
    tileMode: TileMode.clamp,
    colors: [
      Color.fromRGBO(255, 101, 15, 1),
      Color.fromRGBO(255, 245, 0, 0.03),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0, 100],
  ),
  background: const Color(0xFFFCFCFC),
  shadow1: const BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.04),
    blurRadius: 60,
    offset: Offset(0, 0),
    spreadRadius: 0,
  ),
  shadow2: const BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.1),
    blurRadius: 50,
    offset: Offset(0, 0),
    spreadRadius: 0,
  ),
);
