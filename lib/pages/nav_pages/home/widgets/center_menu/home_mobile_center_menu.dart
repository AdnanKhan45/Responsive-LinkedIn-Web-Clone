
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/center_menu/widgets/create/center_menu_create_post_widget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/center_menu/widgets/post/create_menu_single_post_widget.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class HomeMobileCenterMenu extends StatelessWidget {
  const HomeMobileCenterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: linkedInWhiteFFFFFF,
                  border: Border.all(
                      width: 1,
                      color: linkedInMediumGrey86888A.withOpacity(.2)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: Image.asset(
                        "assets/bg_image_1.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          const Text(
                            "Doug Stevenson",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "I create innovative software solutions as a Flutter developer, empowering people through my blogs and YouTube. Co-founder at eTechViral, transforming ideas into reality. 🚀",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color:
                                linkedInMediumGrey86888A.withOpacity(.6),
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Show more",
                      style: TextStyle(
                          fontSize: 14,
                          color: linkedInMediumGrey86888A,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CenterMenuCreatePostWidget(),
              const SizedBox(
                height: 10,
              ),
              const CenterMenuSinglePostWidget()
            ],
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                color: linkedInMediumGrey86888A,
                border: Border.all(width: 3, color: linkedInWhiteFFFFFF),
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(42.5),
                  child: Image.asset(
                    "assets/profile_1.jpeg",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
