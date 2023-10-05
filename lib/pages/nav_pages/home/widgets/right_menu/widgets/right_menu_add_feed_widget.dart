
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/home/widgets/right_menu/widgets/follow_button_widget.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class RightMenuAddFeedWidget extends StatelessWidget {
  const RightMenuAddFeedWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: linkedInWhiteFFFFFF,
        border: Border.all(
            width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal:10, vertical: 10),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Add to your feed", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: linkedInMediumGrey86888A),),
                  Icon(Icons.info, color: linkedInMediumGrey86888A,),
                ],
              ),
              const SizedBox(height: 15,),
              _addToYourFeedSingleUserWidget(),
              const SizedBox(height: 15,),
              _addToYourFeedSingleUserWidget(),
              const SizedBox(height: 15,),
              _addToYourFeedSingleUserWidget(),
              const SizedBox(height: 15,),
              const Row(
                children: [
                  Text("View all recommendations", style: TextStyle(fontSize: 14, color: linkedInMediumGrey86888A, fontWeight: FontWeight.w500),),
                  SizedBox(width: 2,),
                  Icon(Icons.arrow_forward, color: linkedInMediumGrey86888A, size: 20,)
                ],
              )
            ],
          )
      ),
    );
  }

  _addToYourFeedSingleUserWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 55,
          height: 55,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset("assets/profile_1.jpeg")),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Doug Stevenson",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                "Flutter - Android Full-Stack Developer | Firebase Expert | Backend Dev",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12,
                    color: linkedInMediumGrey86888A),
              ),
              SizedBox(height: 10,),
              FollowButtonWidget(),
            ],
          ),
        ),
      ],
    );
  }

}

