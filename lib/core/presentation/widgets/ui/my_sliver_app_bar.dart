import 'package:flutter/material.dart';

import 'package:test_ex1/core/constants/s.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_back_button.dart';
import 'package:test_ex1/core/util/util.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({
    super.key,
    required this.title,
    this.actionsPadding,
    this.backgroundColor,
    this.actions,
    this.centerTitle = true,
    this.canPop = true,
  });
  final String title;
  final EdgeInsets? actionsPadding;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final bool centerTitle;
  final bool canPop;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const P(horizontal: 16, top: S.s12, bottom: S.s24),
      sliver: SliverAppBar(
        automaticallyImplyLeading: false,
        actions: actions,
        centerTitle: centerTitle,
        actionsPadding: actionsPadding,
        backgroundColor: backgroundColor,
        leading: canPop ? const MyBackButton() : null,
        title: Text(
          title,
          style: centerTitle
              ? context.appTextStyle.headline1
              : context.appTextStyle.title2,
        ),
      ),
    );
  }
}
