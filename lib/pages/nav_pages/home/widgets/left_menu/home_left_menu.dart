
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/left_menu/widgets/left_menu_activity_widget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/left_menu/widgets/left_menu_page_widget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/left_menu/widgets/left_menu_profile_widget.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class HomeLeftMenu extends StatelessWidget {
  final double maxWidth;
  const HomeLeftMenu({super.key, required this.maxWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: const Column(
        children: [
          LeftMenuProfileWidget(),
          SizedBox(height: 10,),
          LeftMenuPageWidget(),
          SizedBox(height: 10,),
          LeftMenuActivityWidget(),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
