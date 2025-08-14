import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/constants.dart';

import 'package:test_ex1/core/presentation/widgets/ui/app_icon.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/resources/resources.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
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
    return SliverFillRemaining(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppIcon(iconPath),
              const SizedBox(height: S.s20),
              Text(message, style: context.appTextStyle.headline3),
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
            ],
          ),
        ],
      ),
    );
  }
}
