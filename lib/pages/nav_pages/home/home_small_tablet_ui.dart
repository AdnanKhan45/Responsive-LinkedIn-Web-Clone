
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/center_menu/home_center_menu.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/left_menu/home_left_menu.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/right_menu/home_right_menu.dart';

class HomeSmallTabletUi extends StatelessWidget {
  const HomeSmallTabletUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.topCenter,
      child: const SizedBox(
        width: 700,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeLeftMenu(maxWidth: 220),
            SizedBox(width: 25,),
            HomeCenterMenu(maxWidth: 450),
          ],
        ),
      ),
    );
  }
}
