import 'package:flutter/cupertino.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/data/dto/desks/desks_dto.dart';
import 'package:test_ex1/domain/models/users_desks/users_desks_model.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class DesksListBody<T> extends StatelessWidget {
  const DesksListBody({
    super.key,
    required this.items,
    required this.itemBuilder,
  });
  final List<T> items;
  final Widget Function(BuildContext, T) itemBuilder;

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
                  return context.appColors.gradientOrange!.createShader(
                    bounds,
                  );
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
              itemCount: items.length,
              padding: const P(horizontal: S.s16, vertical: S.s24),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  itemBuilder(context, items[index]),
              separatorBuilder: (context, index) =>
                  const SizedBox(height: S.s16),
            ),
          ],
        ),
      ),
    );
  }
}
