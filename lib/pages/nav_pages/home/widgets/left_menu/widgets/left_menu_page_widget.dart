
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class LeftMenuPageWidget extends StatelessWidget {
  const LeftMenuPageWidget({super.key});

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
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: linkedInMediumGrey86888A.withOpacity(.2),
                  ),
                  child: const Center(
                    child: Icon(Icons.home_work, size: 40, color: linkedInMediumGrey86888A,),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("eTechViral", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                Container(
                  width: 40,
                  height: 1,
                  color: linkedInMediumGrey86888A.withOpacity(.2),
                ),
                const SizedBox(height: 10,),
                _pageAnalyticsAmountItem(
                    title: "Page notifications",
                    amount: "3"
                ),
                const SizedBox(height: 10,),
                _pageAnalyticsAmountItem(
                    title: "Page visitors",
                    amount: "43"
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Divider(color: linkedInMediumGrey86888A.withOpacity(.2),),
          const SizedBox(height: 10,),
          const Center(child: Text("See visitor analytics", style: TextStyle(fontSize: 12, color: linkedInMediumGrey86888A, fontWeight: FontWeight.bold),),),
          const SizedBox(height: 15,),

        ],
      ),
    );
  }

  _pageAnalyticsAmountItem({String? title, String? amount}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$title", style: const TextStyle(color: linkedInMediumGrey86888A, fontWeight: FontWeight.bold, fontSize: 12),),
        Text("$amount", style: const TextStyle(color: linkedInBlue0077B5, fontWeight: FontWeight.bold, fontSize: 12),),
      ],
    );
  }
}
