
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/center_menu/home_center_menu.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/center_menu/home_mobile_center_menu.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/left_menu/home_left_menu.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/right_menu/home_right_menu.dart';

class HomeMobileUi extends StatelessWidget {
  const HomeMobileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.topCenter,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeMobileCenterMenu(),
        ],
      ),
    );
  }
}
