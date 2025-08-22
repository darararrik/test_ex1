import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/auth/auth_bloc.dart';
import 'package:test_ex1/presentation/constants/s.dart';
import 'package:test_ex1/presentation/utils/utils.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.s24),
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
              context.read<AuthBloc>().add(const AuthEvent.logout());
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
