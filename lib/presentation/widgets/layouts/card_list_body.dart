import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/data/dto/desk/desk_dto.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class CardListBody<T> extends StatelessWidget {
  const CardListBody({
    super.key,
    required this.items,
    required this.itemBuilder,
    required this.itemCount,
  });
  final List<T> items;
  final Widget Function(BuildContext, T) itemBuilder;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const P(horizontal: S.s16),
      sliver: SliverToBoxAdapter(
        child: Stack(
          children: [
            Positioned.fill(
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
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemCount,
              padding: const P(horizontal: S.s16, vertical: S.s24),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (index >= items.length) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return itemBuilder(context, items[index]);
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(height: S.s16),
            ),
          ],
        ),
      ),
    );
  }
}
