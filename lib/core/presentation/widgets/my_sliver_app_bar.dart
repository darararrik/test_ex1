import 'package:flutter/material.dart';

import 'package:test_ex1/core/constants/s.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_back_button.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({
    super.key,
    this.title,
    this.actionsPadding,
    this.backgroundColor,
    this.actions,
    this.centerTitle,
    this.canPop = true,
  });
  final Widget? title;
  final EdgeInsets? actionsPadding;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final bool? centerTitle;
  final bool canPop;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(top: S.s12, bottom: S.s24), //
      sliver: SliverAppBar(
        automaticallyImplyLeading: false,
        actions: actions,
        centerTitle: centerTitle,
        actionsPadding: actionsPadding,
        backgroundColor: backgroundColor,
        leading: canPop ? const MyBackButton() : null,
        title: title,
      ),
    );
  }
}
