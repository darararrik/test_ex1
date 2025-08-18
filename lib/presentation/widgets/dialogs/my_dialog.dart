// Flutter imports:

import 'package:flutter/material.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(R.r28),
      ),
      child: Padding(
        padding: const P(horizontal: S.s24, bottom: S.s40, top: S.s32),
        child: child,
      ),
    );
  }
}
