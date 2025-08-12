import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/domain/models/desk/desk_model.dart';
import 'package:test_ex1/core/presentation/providers/providers.dart';
import 'package:test_ex1/core/presentation/widgets/dialogs/my_dialog.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/resources/resources.dart';
import 'widgets/widgets.dart';

@RoutePage()
class MyDesksListScreen extends StatelessWidget {
  const MyDesksListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.currentDeskNotifier.desks;
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) => CreateDialog(
              title: context.l10n.newColumn,
              onSubmit: (name) {
                final notifier = DeskListProvider.of(context);
                notifier.addDesk(name);
              },
              hintText: context.l10n.enterTitleColumn,
            ),
          );
        },
      ),
      body: DesksListBody(data: data, titleAppBar: context.l10n.myDesk),
    );
  }
}
