import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/app_icon.dart';

class SliverEmptyState extends StatelessWidget {
  const SliverEmptyState({
    super.key,
    required this.message,
    required this.iconPath,
    this.needArrow = true,
  });

  final String message;
  final String iconPath;
  final bool needArrow;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: P(top: MediaQuery.of(context).size.height * 0.2),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Align(alignment: Alignment.center, child: AppIcon(iconPath)),
          const SizedBox(height: S.s20),
          Align(
            alignment: Alignment.center,
            child: Text(message, style: context.appTextStyle.headline3),
          ),
          Padding(
            padding: P(
              top: MediaQuery.of(context).size.height * 0.02,
              left: MediaQuery.of(context).size.width * 0.25,
            ),
            child: Visibility(
              visible: needArrow,
              replacement: const SizedBox(height: Sz.s150),
              child: Transform.rotate(
                angle: (math.pi * R.r5) / R.r80,
                child: const AppIcon(AppIcons.arrow, height: Sz.s150),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
