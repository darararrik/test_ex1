import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/old-providers/providers.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/presentation/utils/utils.dart';

@RoutePage()
class MyDesksListScreen extends StatefulWidget {
  const MyDesksListScreen({super.key});

  @override
  State<MyDesksListScreen> createState() => _MyDesksListScreenState();
}

class _MyDesksListScreenState extends State<MyDesksListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //TODO: Переделать
    final data = context.currentNotifier?.getDesks;
    return Scaffold(
      floatingActionButton: CreateUnitFAB(
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
      body: DesksListBody(data: data!, titleAppBar: context.l10n.myDesk),
    );
  }
}
