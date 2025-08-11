import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/s.dart';
import 'package:test_ex1/core/presentation/providers/auth/auth_provider.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';

class MyCupertinoAlertDialog extends StatelessWidget {
  const MyCupertinoAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: S.s24),
      child: CupertinoActionSheet(
        title: Text(
          context.l10n.logOutTitle,
          style: context.appTextStyle.body4.copyWith(
            color: context.appColors.gray700,
          ),
        ),
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => context.pop(),
          child: Text(context.l10n.cancel, style: context.appTextStyle.body1),
        ),
        actions: [
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              AuthProvider.of(context).logout();
              context.pop();
            },
            child: Text(
              context.l10n.logOut,
              style: context.appTextStyle.body1.copyWith(
                color: context.appColors.error,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
