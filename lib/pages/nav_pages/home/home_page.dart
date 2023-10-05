
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/home_desktop_ui.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/home_mobile_ui.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/home_small_tablet_ui.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/home_tablet_ui.dart';
import 'package:linkedin_web_ui/responsive/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileUi: HomeMobileUi(),
        tabletUi: HomeTabletUi(),
        smallTabletUi: HomeSmallTabletUi(),
        desktopUi: HomeDesktopUi()
    );
  }
}
