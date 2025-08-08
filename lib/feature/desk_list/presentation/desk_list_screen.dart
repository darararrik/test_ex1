import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_size.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_floating_action_button.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_icon_button.dart';
import 'package:test_ex1/core/presentation/widgets/empty_state.dart';
import 'package:test_ex1/core/presentation/widgets/my_dialog.dart';
import 'package:test_ex1/core/presentation/widgets/my_sliver_app_bar.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/desk_list_provider.dart';
import 'package:test_ex1/feature/desk_list/presentation/widgets/dock.dart';
import 'package:test_ex1/feature/desk_list/presentation/widgets/my_cupertino_alert_dialog.dart';

@RoutePage()
class DeskListScreen extends StatelessWidget {
  const DeskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = DeskListProvider.of(context).desks;
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) => MyDialog(
              title: context.l10n.newColumn,
              onSubmit: (name) {
                final notifier = DeskListProvider.of(context);
                notifier.addDesk(name);
              },
              hintText: context.l10n.enterTitleColumn,
            ),
          );
        },
      ),
      body: CustomScrollView(
        physics: data.isEmpty ? NeverScrollableScrollPhysics() : null,
        slivers: [
          MySliverAppBar(
            actionsPadding: EdgeInsets.only(right: AppSpacing.s16),
            backgroundColor: context.appColors.gray200,
            title: Text(
              context.l10n.myDesk,
              style: context.appTextStyle.title2,
            ),
            canPop: false,
            actions: [
              MyIconButton(
                onPressed: () => showCupertinoModalPopup(
                  context: context,
                  builder: (context) => MyCupertinoAlertDialog(),
                ),
                iconPath: AppIcons.exit,
                width: AppSize.s42,
                height: AppSize.s42,
              ),
            ],
            centerTitle: false,
          ),
          data.isNotEmpty
              ? SliverPadding(
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
                          itemCount: data.length,
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSpacing.s16,
                            vertical: AppSpacing.s24,
                          ),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Dock(desk: data[index]);
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: AppSpacing.s16);
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : EmptyState(message: context.l10n.emptyDeskScreen),
        ],
      ),
    );
  }
}
