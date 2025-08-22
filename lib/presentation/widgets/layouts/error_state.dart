import 'package:flutter/material.dart';

import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class ErrorState extends StatelessWidget {
  const ErrorState({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      message: context.l10n.internetError,
      iconPath: AppIcons.nonetwork,
      needArrow: false,
    );
  }
}
