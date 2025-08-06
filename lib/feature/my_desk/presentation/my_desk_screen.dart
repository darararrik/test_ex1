import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/floating_action_button_widget.dart';
import 'package:test_ex1/core/util/build_context_x.dart';
import 'package:test_ex1/feature/my_desk/presentation/widgets/dock.dart';

@RoutePage()
class MyDeskScreen extends StatelessWidget {
  const MyDeskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButtonWidget(
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
              actions: [_ExitIconButton()],
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

class _ExitIconButton extends StatelessWidget {
  const _ExitIconButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      height: 42,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [context.appColors.shadow1],
          color: context.appColors.gray100,
          borderRadius: BorderRadius.circular(AppRounding.r30),
        ),
        child: IconButton(
          icon: AppIcon(AppIcons.exit, width: 18, height: 18),
          onPressed: () {
            // Handle search action
          },
        ),
      ),
    );
  }
}
