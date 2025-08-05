import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_ex1/core/constants/app_icons.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/presentation/widgets/app_icon.dart';
import 'package:test_ex1/core/util/build_context_x.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

@RoutePage(name: 'NavBarRoute')
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [MyDockRoute(), UsersDesksRoute(), FollowedRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppRounding.r24),
            ),
            child: NavigationBar(
              selectedIndex: tabsRouter.activeIndex,
              onDestinationSelected: tabsRouter.setActiveIndex,

              destinations: [
                NavigationDestination(
                  icon: AppIcon(AppIcons.myDesk),
                  selectedIcon: AppIcon(
                    AppIcons.myDesk,
                    color: context.appColors.gray800,
                  ),
                  label: context.l10n.myDesk,
                ),
                NavigationDestination(
                  icon: AppIcon(AppIcons.userDesk),
                  selectedIcon: AppIcon(
                    AppIcons.userDesk,
                    color: context.appColors.gray800,
                  ),
                  label: context.l10n.usersDesks,
                ),
                NavigationDestination(
                  icon: AppIcon(AppIcons.followed),
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
      },
    );
  }
}
