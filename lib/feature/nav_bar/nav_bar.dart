import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/presentation/widgets/ui/app_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import 'package:test_ex1/resources/resources.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';
import 'package:test_ex1/routing/wrappers/users_desks_wrapper.dart';

@RoutePage(name: 'NavBarRoute')
class NavBar extends StatelessWidget {
  const NavBar({super.key});

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
            onDestinationSelected: tabsRouter.setActiveIndex,

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
