// Flutter imports:

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/util.dart';

class SorryDialog extends StatelessWidget {
  const SorryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return MyDialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.l10n.sorry, style: context.appTextStyle.title2),
          const SizedBox(height: S.s12),
          Text(
            context.l10n.sorryText,
            style: context.appTextStyle.headline3,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: S.s24),
          PrimaryButton(
            isEnabled: true,
            onPressed: () => context.pop(),
            text: context.l10n.ok,
          ),
        ],
      ),
    );
  }
}
