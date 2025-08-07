import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_size.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_floating_action_button.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_icon_button.dart';
import 'package:test_ex1/core/presentation/widgets/my_dialog.dart';
import 'package:test_ex1/core/presentation/widgets/my_sliver_app_bar.dart';
import 'package:test_ex1/core/util/build_context_x.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/desk_list_provider.dart';
import 'package:test_ex1/feature/desk_list/presentation/widgets/dock.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

@RoutePage()
class DeskListScreen extends StatefulWidget {
  const DeskListScreen({super.key});

  @override
  State<DeskListScreen> createState() => _DeskListScreenState();
}

class _DeskListScreenState extends State<DeskListScreen> {
  late final TextEditingController nameController;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = DeskListProvider.of(context).desks;
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => MyDialog(
              title: context.l10n.newColumn,
              onPressed: () {
                final notifier = DeskListProvider.of(context);
                notifier.addDesk(nameController.text);
              },
              nameController: nameController,
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
            actions: [
              MyIconButton(
                onPressed: () => context.replaceRoute(LoginRoute()),
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
              : SliverFillRemaining(
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppIcon(AppIcons.emptyDesk),
                          const SizedBox(height: AppSpacing.s20),
                          Text(
                            context.l10n.emptyDeskScreen,
                            style: context.appTextStyle.headline3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02,
                              left: MediaQuery.of(context).size.width * 0.25,
                            ),
                            child: Transform.rotate(
                              angle: (math.pi * 5) / 80,
                              child: AppIcon(AppIcons.arrow, width: 100),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
