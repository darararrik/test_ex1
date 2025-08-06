import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';

class CapsuleIcon extends StatelessWidget {
  const CapsuleIcon({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 47,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppRounding.r10),
        child: ColoredBox(color: color),
      ),
    );
  }
}
