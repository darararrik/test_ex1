import 'package:flutter/widgets.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/presentation/providers/providers.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final notifier = AuthProvider.of(context);
      if (notifier.currentUser == null) {
        context.replaceRoute(const AuthWrapperRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("data"));
  }
}
