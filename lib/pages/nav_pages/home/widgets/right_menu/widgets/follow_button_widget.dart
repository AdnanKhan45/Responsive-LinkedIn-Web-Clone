
import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class FollowButtonWidget extends StatefulWidget {
  const FollowButtonWidget({Key? key}) : super(key: key);

  @override
  State<FollowButtonWidget> createState() => _FollowButtonWidgetState();
}

class _FollowButtonWidgetState extends State<FollowButtonWidget> {

  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Container(
        width: 105,
        height: 35,
        decoration: BoxDecoration(
          color: _isHover == true? linkedInLightGreyBackgroundF3F2EE : linkedInWhiteFFFFFF,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: _isHover == true? 2 : 1, color: _isHover == true?linkedInMediumGrey86888A: linkedInMediumGrey86888A),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: linkedInMediumGrey86888A,),
            SizedBox(width: 5,),
            Text("Follow", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: linkedInMediumGrey86888A),)
          ],
        ),
      ),
    );
  }
}
