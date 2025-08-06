import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_size.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_floating_action_button.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_icon_button.dart';
import 'package:test_ex1/core/util/build_context_x.dart';
import 'package:test_ex1/feature/desk_list/presentation/widgets/dock.dart';

@RoutePage()
class DeskListScreen extends StatelessWidget {
  const DeskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(
        onPressed: () {
          // TODO: Реализовать добавление нового элемента в док
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(
              top: AppSpacing.s12,
              bottom: AppSpacing.s24,
            ),
            sliver: SliverAppBar(
              actionsPadding: EdgeInsets.only(right: AppSpacing.s16),
              backgroundColor: context.appColors.gray200,
              title: Text(
                context.l10n.myDesk,
                style: context.appTextStyle.title2,
              ),
              actions: [
                MyIconButton(
                  onPressed: () {
                    //TODO: Реализовать выход?
                  },

                  iconPath: AppIcons.exit,
                  width: AppSize.s42,
                  height: AppSize.s42,
                ),
              ],
              centerTitle: false,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s16,
            ),
            sliver: SliverToBoxAdapter(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return context.appColors.gradientOrange!
                            .createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppRounding.r24,
                          ),
                          image: DecorationImage(
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
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.s16,
                      vertical: AppSpacing.s24,
                    ),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const Dock();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: AppSpacing.s16);
                    },
                    itemCount: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
