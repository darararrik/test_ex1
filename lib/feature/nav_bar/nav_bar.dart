
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

@RoutePage(name: 'NavBarRoute')
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [MyDeskWrapperRoute(), UsersDesksRoute(), FollowedRoute()],
      bottomNavigationBuilder: (_, tabsRouter) => ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(R.r24)),
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
              icon: const AppIcon(AppIcons.userDesk),
              selectedIcon: AppIcon(
                AppIcons.userDesk,
                color: context.appColors.gray800,
              ),
              label: context.l10n.usersDesks,
            ),
            NavigationDestination(
              icon: const AppIcon(AppIcons.followed),
              selectedIcon: AppIcon(
                AppIcons.followed,
                color: context.appColors.gray800,
              ),
              label: context.l10n.followed,
            ),
          ],
        ),
      ),
    );
  }
}
