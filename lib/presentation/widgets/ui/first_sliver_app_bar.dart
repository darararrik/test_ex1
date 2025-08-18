import 'package:flutter/cupertino.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/presentation/utils/utils.dart';

class FirstSliverAppBar extends StatelessWidget {
  const FirstSliverAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return MySliverAppBar(
      title: title,
      backgroundColor: context.appColors.gray200,
      actionsPadding: const P(right: S.s16),
      canPop: false,
      centerTitle: false,
      actions: [
        MyIconButton(
          onPressed: () => showCupertinoModalPopup(
            context: context,
            builder: (context) => const MyCupertinoAlertDialog(),
          ),
          iconPath: AppIcons.exit,
          width: Sz.s42,
          height: Sz.s42,
        ),
      ],
    );
  }
}
