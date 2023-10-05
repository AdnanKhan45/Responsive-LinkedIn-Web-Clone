
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/right_menu/widgets/right_menu_add_feed_widget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/right_menu/widgets/right_menu_see_who_is_hiring_widget.dart';

class HomeRightMenu extends StatelessWidget {
  final double maxWidth;
  const HomeRightMenu({super.key, required this.maxWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: const Column(
        children: [
          RightMenuAddFeedWidget(),
          SizedBox(height: 10,),
          RightMenuSeeWhoIsHiringWidget(),
        ],
      ),
    );
  }
}
