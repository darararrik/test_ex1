import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/presentation/providers/desk_list/providers.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/resources/resources.dart';
import 'widgets/widgets.dart';

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
        physics: data.isEmpty ? const NeverScrollableScrollPhysics() : null,
        slivers: [
          MySliverAppBar(
            actionsPadding: const P(right: S.s16),
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
                  builder: (context) => const MyCupertinoAlertDialog(),
                ),
                iconPath: AppIcons.exit,
                width: 42,
                height: 42,
              ),
            ],
            centerTitle: false,
          ),
          Visibility(
            visible: data.isNotEmpty,
            replacement: EmptyState(message: context.l10n.emptyDeskScreen),
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
      ),
    );
  }
}
