import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:test_ex1/core/constants/s.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/resources/resources.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppIcon(AppIcons.sketch),
              const SizedBox(height: S.s20),
              Text(message, style: context.appTextStyle.headline3),
              Padding(
                padding: P(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.25,
                ),
                child: Transform.rotate(
                  angle: (math.pi * 5) / 80,
                  child: const AppIcon(AppIcons.arrow, width: 100),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
