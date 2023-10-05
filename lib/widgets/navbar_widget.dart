
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_web_ui/theme/styles.dart';
import 'package:linkedin_web_ui/widgets/navbar_item_widget.dart';
import 'package:linkedin_web_ui/widgets/navbar_responsive_right_row_widget.dart';
import 'package:linkedin_web_ui/widgets/profile_navbar_item_widget.dart';

typedef NavBarClickListener = Function(int);

class NavBarWidget extends StatefulWidget {
  final Function(int)? onNavbarItemClickListener;
  const NavBarWidget({super.key, this.onNavbarItemClickListener});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {

  int _currentSelectedNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
            height: 55,
            decoration: const BoxDecoration(color: linkedInWhiteFFFFFF, boxShadow: [
              BoxShadow(
                  blurRadius: 0.15,
                  spreadRadius: 0.1,
                  offset: Offset(0, 0),
                  color: linkedInLightGreyCACCCE),
            ]),
            child: Row(
              mainAxisAlignment: constraints.maxWidth < 1030? MainAxisAlignment.start : MainAxisAlignment.center,
              children: [

                constraints.maxWidth < 1030 ?
                buildLeftRow(maxWidth: constraints.maxWidth) :

                constraints.maxWidth < 1150 ?
                Expanded(child: buildLeftRow(maxWidth: constraints.maxWidth))
                    : buildLeftRow(maxWidth: constraints.maxWidth),

                if(constraints.maxWidth > 1150)
                  const SizedBox(width: 120,),

                constraints.maxWidth < 550 ?
                NavbarResponsiveRightRowWidget(
                  onNavbarItemClickListener: widget.onNavbarItemClickListener!,
                  rowWithoutTitlesAndSpacingWithMenu: true,
                ) : constraints.maxWidth < 730 ?
                NavbarResponsiveRightRowWidget(
                  onNavbarItemClickListener: widget.onNavbarItemClickListener!,
                  rowWithoutTitlesAndSpacing: true,
                ) :
                constraints.maxWidth < 800?
                NavbarResponsiveRightRowWidget(
                  onNavbarItemClickListener: widget.onNavbarItemClickListener!,
                  rowWithoutTitles: true,
                ) :
                NavbarResponsiveRightRowWidget(
                  onNavbarItemClickListener: widget.onNavbarItemClickListener!,
                )
              ],
            ),
        );
      }
    );
  }

  buildLeftRow({required double maxWidth}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0,bottom: 5, left: 15),
            child: Image.asset("assets/app_logo.png"),
          ),
          const SizedBox(
            width: 10,
          ),
          if (maxWidth < 1030)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    SizedBox(height:  maxWidth < 800? 10 : 2,),
                    const Icon(Icons.search, color: linkedInMediumGrey86888A,),
                    maxWidth < 800 ? Container() : const Text("Search", style: TextStyle(color: linkedInMediumGrey86888A),),
                  ],
                ),
              ),
            ) else
          Container(
            width: 280,
            height: 40,
            decoration: BoxDecoration(
              color: linkedInLightGreySearchEEF3F7,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    color: linkedInMediumGrey86888A,
                    size: 22,
                  ),
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }

}
