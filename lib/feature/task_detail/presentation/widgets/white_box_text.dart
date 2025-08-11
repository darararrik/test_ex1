import 'package:flutter/material.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/util/util.dart';

class WhiteBoxText extends StatelessWidget {
  const WhiteBoxText({super.key, required this.title, required this.data});
  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.appColors.gray100,
          borderRadius: BorderRadius.circular(R.r28),
        ),
        child: Padding(
          padding: const P(vertical: S.s28),
          child: Center(
            child: Column(
              children: [
                Text(
                  title,
                  style: context.appTextStyle.headline3.copyWith(
                    color: context.appColors.gray700,
                  ),
                ),
                Text(data, style: context.appTextStyle.headline1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
