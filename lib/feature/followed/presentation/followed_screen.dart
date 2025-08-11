import 'package:flutter/widgets.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/presentation/providers/auth/auth_provider.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

@RoutePage()
class FollowedScreen extends StatefulWidget {
  const FollowedScreen({super.key});

  @override
  State<FollowedScreen> createState() => _FollowedScreenState();
}

class _FollowedScreenState extends State<FollowedScreen> {
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
    return const Center(child: Text("Followed Screen"));
  }
}
