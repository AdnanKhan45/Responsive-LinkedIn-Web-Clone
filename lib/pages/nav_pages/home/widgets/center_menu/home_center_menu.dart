
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/center_menu/widgets/create/center_menu_create_post_widget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/center_menu/widgets/post/create_menu_single_post_widget.dart';

class HomeCenterMenu extends StatelessWidget {
  final double maxWidth;
  const HomeCenterMenu({super.key, required this.maxWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: const Column(
        children: [
          CenterMenuCreatePostWidget(),
          SizedBox(
            height: 10,
          ),
          CenterMenuSinglePostWidget()
        ],
      ),
    );
  }
}
