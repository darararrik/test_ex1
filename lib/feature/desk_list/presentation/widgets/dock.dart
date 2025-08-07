import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/domain/models/desk_model.dart';
import 'package:test_ex1/core/util/build_context_x.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

class Dock extends StatelessWidget {
  const Dock({super.key, required this.desk});
  final DeskModel desk;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.appColors.gray100, // начальный цвет
      borderRadius: BorderRadius.circular(AppRounding.r24),
      elevation: 1,
      shadowColor: context.appColors.shadow1.color,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppRounding.r24),
        onTap: () => context.pushRoute(
          TasksRoute(tasksList: desk.tasks, title: desk.title),
        ),
        splashColor: context.appColors.gray300,
        highlightColor: context.appColors.gray300,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s24),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              desk.title,
              style: context.appTextStyle.headline1,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
