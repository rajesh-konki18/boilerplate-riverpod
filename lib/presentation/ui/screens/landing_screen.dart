import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/router/app_router.gr.dart';

class LandingScreen extends HookConsumerWidget {
  LandingScreen({
    Key? key,
  }) : super(key: key);

  final List<NavBarItemAsset> _navBarItemAssetList = [
    NavBarItemAsset(
      title: 'Home',
      // icon: Assets.svg.icons.bottomNav.home,
      // activeIcon: Assets.svg.icons.bottomNav.homeSelected,
      // activeIconDark: Assets.svg.icons.bottomNav.homeSelectedDark,
    ),
    NavBarItemAsset(
      title: 'Profile',
      // icon: Assets.svg.icons.bottomNav.person,
      // activeIcon: Assets.svg.icons.bottomNav.personSelected,
      // activeIconDark: Assets.svg.icons.bottomNav.personSelectedDark,
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDark = useIsDarkHook();

    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return GestureDetector(
          onTap: () {
            final currentScope = FocusScope.of(context);
            if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              selectedFontSize: 12,
              onTap: tabsRouter.setActiveIndex,
              currentIndex: tabsRouter.activeIndex,
              type: BottomNavigationBarType.fixed,
              items: _navBarItemAssetList
                  .map(
                    (navBarItemAsset) => BottomNavigationBarItem(
                      icon: Icon(
                        navBarItemAsset.title == "Home"
                            ? Icons.home
                            : Icons.person,
                      ),

                      // icon: Padding(
                      //   padding: const EdgeInsets.all(12.0),
                      //   child: navBarItemAsset.icon.svg(
                      //     width: 18,
                      //     height: 18,
                      //     color: Theme.of(context)
                      //         .bottomNavigationBarTheme
                      //         .unselectedItemColor,
                      //   ),
                      // ),
                      // activeIcon: Container(
                      //   padding: const EdgeInsets.all(10.0),
                      //   margin: const EdgeInsets.all(2.0),
                      //   decoration: ShapeDecoration(
                      //     shape: const CircleBorder(),
                      //     color: bottomNavSelectedItemCircleColor,
                      //   ),
                      //   child: isDark
                      //       ? navBarItemAsset.activeIconDark.svg(
                      //           width: 18,
                      //           height: 18,
                      //         )
                      //       : navBarItemAsset.activeIcon.svg(
                      //           width: 18,
                      //           height: 18,
                      //         ),
                      // ),
                      label: navBarItemAsset.title,
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}

class NavBarItemAsset {
  final String title;
  // final SvgGenImage icon;
  // final SvgGenImage activeIcon;
  // final SvgGenImage activeIconDark;
  NavBarItemAsset({
    required this.title,
    // required this.icon,
    // required this.activeIcon,
    // required this.activeIconDark,
  });
}
