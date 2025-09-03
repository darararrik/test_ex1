import 'package:flutter/material.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.s16),
      child: Stack(
        children: [
          Positioned.fill(
            child: Skeleton.ignore(
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return context.appColors.gradientOrange!.createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(R.r24),
                    image: const DecorationImage(
                      image: Svg(AppIcons.background),
                      repeat: ImageRepeat.repeat,
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
