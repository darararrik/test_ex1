import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/old-providers/providers.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class UsersDesksScreen extends StatefulWidget {
  const UsersDesksScreen({super.key});

  @override
  State<UsersDesksScreen> createState() => _UsersDesksScreenState();
}

class _UsersDesksScreenState extends State<UsersDesksScreen> {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   final notifier = AuthProvider.of(context);
    //   if (notifier.currentUser == null) {
    //     context.replaceRoute(const AuthWrapperRoute());
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    final data = context.currentNotifier?.getDesks;
    return Scaffold(
      body: DesksListBody(titleAppBar: context.l10n.usersDesks, data: data!),
    );
  }
}
