
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class LeftMenuProfileWidget extends StatefulWidget {
  const LeftMenuProfileWidget({super.key});

  @override
  State<LeftMenuProfileWidget> createState() => _LeftMenuProfileWidgetState();
}

class _LeftMenuProfileWidgetState extends State<LeftMenuProfileWidget> {


  bool _isHoverUsername = false;
  bool _isHoverAnalyticsAndTools = false;
  bool _isHoverTryPremium = false;
  bool _isHoverMyItems = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: linkedInWhiteFFFFFF,
          border: Border.all(width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ClipRRect( borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),child: Image.asset("assets/bg_image_1.jpeg", fit: BoxFit.fill,)),
              ),
              const SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    InkWell(onTap: () {}, onHover: (value)  {
                      setState(() {
                        _isHoverUsername = value;
                      });
                    },child: Text("Doug Stevenson", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, decoration: _isHoverUsername == true? TextDecoration.underline : TextDecoration.none),)),
                    const SizedBox(height: 10,),
                    Text("Flutter Full-Stack Developer | Firebase Expert | Blogger | Youtuber", textAlign: TextAlign.center,style: TextStyle(color: linkedInMediumGrey86888A.withOpacity(.6), fontSize: 12),)
                  ],
                ),
              ),

              const SizedBox(height: 10,),
              Container(width: double.infinity, height: 1, color: linkedInMediumGrey86888A.withOpacity(.2),),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHoverAnalyticsAndTools = value;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  color: _isHoverAnalyticsAndTools == true? linkedInLightGreyBackgroundF3F2EE : Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text("Analytics & tools", style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Text("974 post impressions", textAlign: TextAlign.center,style: TextStyle(color: linkedInMediumGrey86888A.withOpacity(.6), fontSize: 12),),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
              Container(width: double.infinity, height: 1, color: linkedInMediumGrey86888A.withOpacity(.2),),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHoverTryPremium = value;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: double.infinity,
                  color: _isHoverTryPremium == true? linkedInLightGreyBackgroundF3F2EE : Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text("Access exclusive tools & insights", textAlign: TextAlign.center,style: TextStyle(color: linkedInMediumGrey86888A.withOpacity(.6), fontSize: 12),),
                      const SizedBox(height: 10,),
                      const Row(
                        children: [
                          Icon(FontAwesomeIcons.solidCreditCard, color: Colors.amber, size: 15,),
                          SizedBox(width: 8,),
                          Text("Try Premium for free", style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
              Container(width: double.infinity, height: 1, color: linkedInMediumGrey86888A.withOpacity(.2),),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHoverMyItems = value;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: _isHoverMyItems == true? linkedInLightGreyBackgroundF3F2EE : Colors.white,
                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10))
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.bookmark, size: 15, color: linkedInMediumGrey86888A,),
                          SizedBox(width: 5,),
                          Text("My items", style: TextStyle(fontWeight: FontWeight.bold, color: linkedInMediumGrey86888A),)
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ],
          ),

          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHoverUsername = value;
              });
            },
            child: Align(
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
                child: ClipRRect(borderRadius: BorderRadius.circular(42.5),child: Image.asset("assets/profile_1.jpeg", fit: BoxFit.cover,)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
