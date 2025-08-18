import 'package:flutter/cupertino.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class DesksListBody extends StatelessWidget {
  const DesksListBody({
    super.key,
    required this.data,
    required this.titleAppBar,
  });

  final List<DeskModel> data;
  final String titleAppBar;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: data.isEmpty ? const NeverScrollableScrollPhysics() : null,
      slivers: [
        FirstSliverAppBar(title: titleAppBar),
        Visibility(
          visible: data.isNotEmpty,
          replacement: EmptyState(
            message: context.l10n.emptyDeskScreen,
            iconPath: AppIcons.sketch,
          ),
          child: SliverPadding(
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
                    itemCount: data.length,
                    padding: const P(horizontal: S.s16, vertical: S.s24),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Dock(desk: data[index]);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: S.s16);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
