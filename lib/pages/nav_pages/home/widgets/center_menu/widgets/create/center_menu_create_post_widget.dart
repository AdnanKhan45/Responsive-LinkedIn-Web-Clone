

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/center_menu/widgets/create/widgets/create_post_item_widget.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class CenterMenuCreatePostWidget extends StatefulWidget {
  const CenterMenuCreatePostWidget({super.key});

  @override
  State<CenterMenuCreatePostWidget> createState() => _CenterMenuCreatePostWidgetState();
}

class _CenterMenuCreatePostWidgetState extends State<CenterMenuCreatePostWidget> {

  bool _isHoverStartPost = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: linkedInWhiteFFFFFF,
            border: Border.all(width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: linkedInMediumGrey86888A,
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(27.5),child: Image.asset("assets/profile_1.jpeg", fit: BoxFit.cover,)),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            _isHoverStartPost = value;
                          });
                        },
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: _isHoverStartPost == true? linkedInLightGreyCACCCE.withOpacity(.4) : linkedInWhiteFFFFFF,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 1, color:  linkedInMediumGrey86888A.withOpacity(.4))
                          ),
                          child: const Text("Start a post", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: linkedInMediumGrey86888A),),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CreatePostItemWidget(
                        title: "Photo",
                        iconData: Icons.image,
                        color: Colors.lightBlue,
                      ),
                      const CreatePostItemWidget(
                        title: "Video",
                        iconData: FontAwesomeIcons.youtube,
                        color: Colors.green,
                      ),
                      CreatePostItemWidget(
                        title: "Job",
                        iconData: Icons.work,
                        color: Colors.purpleAccent.withOpacity(.6),
                      ),
                      CreatePostItemWidget(
                        title: "Write article",
                        iconData: Icons.article,
                        color: Colors.orange.withOpacity(.6),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 8,),
        Row(
          children: [
            Expanded(child: Divider(color: linkedInMediumGrey86888A.withOpacity(.4),)),
            const SizedBox(width: 5,),
            Text("Sort by:", style: TextStyle(fontSize: 12, color: linkedInMediumGrey86888A.withOpacity(.6)),),
            const SizedBox(width: 5,),
            const Text("Top", style: TextStyle(fontSize: 12),),
            const Icon(Icons.arrow_drop_down, size: 20,),
          ],
        )
      ],
    );;
  }
}
