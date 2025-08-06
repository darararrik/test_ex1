import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_size.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/primary_button.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/secondary_button.dart';
import 'package:test_ex1/core/presentation/widgets/my_sliver_app_bar.dart';
import 'package:test_ex1/core/util/build_context_x.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ex1/feature/task_detail/presentation/widgets/input_comment_widget.dart';

@RoutePage()
class TaskDetailScreen extends StatefulWidget {
  const TaskDetailScreen({super.key});

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  late final TextEditingController _commentController;
  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: Text("name deck")),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _TaskData(),
                  const SizedBox(height: AppSize.s20),
                  Text(
                    context.l10n.comments,
                    style: context.appTextStyle.headline2,
                  ),
                  const SizedBox(height: AppSize.s12),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.s16,
                      horizontal: AppSpacing.s32,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("name", style: context.appTextStyle.body1),
                            Text(
                              "date",
                              style: context.appTextStyle.body4.copyWith(
                                color: context.appColors.gray700,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: AppSpacing.s12,
                          ),
                          child: Text(
                            "akdsjbkajsbdkajsbaksdbk",
                            style: context.appTextStyle.body2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.s12),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSize.s16,
                    ),
                    child: InputCommentWidget(
                      commentController: _commentController,
                    ),
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

class _TaskData extends StatelessWidget {
  const _TaskData();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: context.appColors.gray500),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.s16,
        ).copyWith(bottom: AppSpacing.s24),
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRounding.r24),
                image: DecorationImage(
                  image: Svg(AppIcons.background),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSpacing.s16,
                  horizontal: AppSpacing.s16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _WhiteBoxText(
                          title: context.l10n.date,
                          data: '01.01.2004',
                        ),
                        const SizedBox(width: AppSpacing.s12),
                        _WhiteBoxText(
                          title: context.l10n.totalPrayers,
                          data: '333',
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.s12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _WhiteBoxText(
                          title: context.l10n.otherPrayers,
                          data: '456',
                        ),
                        const SizedBox(width: AppSpacing.s12),
                        _WhiteBoxText(
                          title: context.l10n.myPrayers,
                          data: '60',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSize.s12),
            PrimaryButton(
              isEnabled: true,
              onPressed: () {},
              text: context.l10n.prayed,
            ),
            const SizedBox(height: AppSize.s8),
            SecondaryButton(
              isEnabled: false,
              onPressed: () {},
              text: context.l10n.follow,
            ),
          ],
        ),
      ),
    );
  }
}

class _WhiteBoxText extends StatelessWidget {
  const _WhiteBoxText({required this.title, required this.data});
  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.appColors.gray100,
          borderRadius: BorderRadius.circular(AppRounding.r28),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.s28),
          child: Center(
            child: Column(
              children: [
                Text(
                  title,
                  style: context.appTextStyle.headline3.copyWith(
                    color: context.appColors.gray700,
                  ),
                ),
                Text(data, style: context.appTextStyle.headline1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
