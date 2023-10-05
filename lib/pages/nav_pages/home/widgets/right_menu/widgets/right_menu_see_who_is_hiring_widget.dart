
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class RightMenuSeeWhoIsHiringWidget extends StatelessWidget {
  const RightMenuSeeWhoIsHiringWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/see_whos_hiring.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _moreInfoItemWidget(title: "About"),
            const SizedBox(
              width: 15,
            ),
            _moreInfoItemWidget(title: "Accessibility"),
            const SizedBox(
              width: 15,
            ),
            _moreInfoItemWidget(title: "Help Center"),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _moreInfoItemWidget(title: "Privacy & Terms", hasIcon: true, icon: Icons.arrow_drop_down_outlined),
            const SizedBox(
              width: 15,
            ),
            _moreInfoItemWidget(title: "Ad Choices"),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _moreInfoItemWidget(title: "Advertising"),
            const SizedBox(
              width: 15,
            ),
            _moreInfoItemWidget(title: "Business Services", hasIcon: true, icon: Icons.arrow_drop_down_outlined),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _moreInfoItemWidget(title: "Get the LinkedIn app"),
            const SizedBox(
              width: 15,
            ),
            _moreInfoItemWidget(title: "More"),
          ],
        ),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/linkedin_word_logo.png", width: 55, height: 55,),
            const SizedBox(width: 8,),
            _moreInfoItemWidget(title: "LinkedIn Corporation © 2023"),
          ],
        ),
      ],
    );
  }

  _moreInfoItemWidget({String? title, bool? hasIcon, IconData? icon}) {
    return hasIcon == true? Row(
      children: [
        Text(
          "$title",
          style: const TextStyle(fontSize: 11, color: linkedInMediumGrey86888A),
        ),
        const SizedBox(width: 3,),
        Icon(icon, size: 18, color: linkedInMediumGrey86888A,)
      ],
    ) : Text(
      "$title",
      style: const TextStyle(fontSize: 11, color: linkedInMediumGrey86888A),
    );

  }
}
