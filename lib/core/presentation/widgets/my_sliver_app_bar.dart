import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key, this.title, this.leading});
  final Widget? title;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(top: AppSpacing.s12, bottom: AppSpacing.s24), //
      sliver: SliverAppBar(leading: leading, title: title),
    );
  }
}
