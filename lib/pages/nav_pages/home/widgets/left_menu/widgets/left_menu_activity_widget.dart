
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../theme/styles.dart';

class LeftMenuActivityWidget extends StatelessWidget {
  const LeftMenuActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: linkedInWhiteFFFFFF,
          border: Border.all(width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // * Recent Activity
                const SizedBox(height: 10,),
                const Text("Recent", style: TextStyle(fontSize: 12, color: linkedInMediumGrey86888A),),
                const SizedBox(height: 10,),
                _singleActivityItem(
                    title: "Android Flutter | Software Company | Development"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "Flutter Development Community"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "Android Community"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "Flutter World Wide"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "iOS Development"
                ),

                // * Groups
                const SizedBox(height: 20,),
                const Text("Groups", style: TextStyle(fontSize: 12, color: linkedInBlue0077B5, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                _singleActivityItem(
                    title: "Flutter World Wide"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "iOS Development"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "Linux Development"
                ),

                // * Events
                const SizedBox(height: 20,),
                const Text("Events", style: TextStyle(fontSize: 12, color: linkedInBlue0077B5, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                _singleActivityItem(
                    title: "Flutter World Wide"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "iOS Development"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "Linux Development"
                ),

                // * Followed Hashtags
                const SizedBox(height: 20,),
                const Text("Hashtags", style: TextStyle(fontSize: 12, color: linkedInBlue0077B5, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "firebase",
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "flutter",
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "composecamp",
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "developers",
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "googleio",
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Divider(color: linkedInMediumGrey86888A.withOpacity(.2),),
          const SizedBox(height: 10,),
          const Center(child: Text("Discover more", style: TextStyle(fontSize: 12, color: linkedInMediumGrey86888A, fontWeight: FontWeight.bold),),),
          const SizedBox(height: 15,),

        ],
      ),
    );
  }

  _singleActivityItem({String? title, IconData? iconData = Icons.groups}) {
    return Row(
      children: [
        Icon(iconData, size: 20, color: linkedInMediumGrey86888A,),
        const SizedBox(width: 10,),
        Expanded(child: Text("$title", maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: linkedInMediumGrey86888A),)),
      ],
    );
  }
}
