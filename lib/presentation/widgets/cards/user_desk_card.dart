import 'package:flutter/material.dart';
import 'package:test_ex1/domain/models/models.dart';

import 'package:test_ex1/presentation/constants/r.dart';
import 'package:test_ex1/presentation/constants/s.dart';
import 'package:test_ex1/presentation/utils/utils.dart';

class UserDeskCard extends StatelessWidget {
  const UserDeskCard({super.key, required this.desk, required this.onTap});
  final VoidCallback onTap;
  final DeskModel desk;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.appColors.gray100,
      borderRadius: BorderRadius.circular(R.r24),
      child: InkWell(
        borderRadius: BorderRadius.circular(R.r24),
        onTap: onTap,
        splashColor: context.appColors.gray300,
        highlightColor: context.appColors.gray300,
        child: Padding(
          padding: const P(all: S.s24),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              desk.name,
              style: context.appTextStyle.headline1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
