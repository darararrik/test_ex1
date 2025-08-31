import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/auth/auth_bloc.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/routing/wrappers/users_desks_wrapper.dart';
import 'package:test_ex1/presentation/utils/extensions/build_context_x.dart';
import 'package:test_ex1/presentation/widgets/ui/app_icon.dart';

@RoutePage(name: 'NavBarRoute')
class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.check());
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MyDesksWrapperRoute(),
        UsersDesksWrapperRoute(),
        FollowedWrapperRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(R.r24),
          ),
          child: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: (index) {
              final authState = context.read<AuthBloc>().state;
              authState.maybeWhen(
                logined: () => tabsRouter.setActiveIndex(index),
                orElse: () =>
                    context.router.replaceAll([const AuthWrapperRoute()]),
              );
            },
            destinations: [
              NavigationDestination(
                icon: const AppIcon(AppIcons.myDesk),
                selectedIcon: AppIcon(
                  AppIcons.myDesk,
                  color: context.appColors.gray800,
                ),
                label: context.l10n.myDesk,
              ),
              NavigationDestination(
                icon: const AppIcon(AppIcons.usersDesks),
                selectedIcon: AppIcon(
                  AppIcons.usersDesks,
                  color: context.appColors.gray800,
                ),
                label: context.l10n.usersDesks,
              ),
              NavigationDestination(
                icon: const AppIcon(AppIcons.subscribers),
                selectedIcon: AppIcon(
                  AppIcons.subscribers,
                  color: context.appColors.gray800,
                ),
                label: context.l10n.followed,
              ),
            ],
          ),
        );
      },
    );
  }
}
