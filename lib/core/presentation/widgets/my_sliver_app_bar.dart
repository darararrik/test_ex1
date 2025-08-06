import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_back_button.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({
    super.key,
    this.title,
    this.actionsPadding,
    this.backgroundColor,
    this.actions,
    this.centerTitle,
  });
  final Widget? title;
  final EdgeInsets? actionsPadding;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final bool? centerTitle;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(top: AppSpacing.s12, bottom: AppSpacing.s24), //
      sliver: SliverAppBar(
        automaticallyImplyLeading: false,
        actions: actions,
        centerTitle: centerTitle,
        actionsPadding: actionsPadding,
        backgroundColor: backgroundColor,
        leading: context.router.canPop() ? MyBackButton() : null,
        title: title,
      ),
    );
  }
}
