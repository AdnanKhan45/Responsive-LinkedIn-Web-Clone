
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_web_ui/theme/styles.dart';
import 'package:linkedin_web_ui/widgets/navbar_item_widget.dart';
import 'package:linkedin_web_ui/widgets/profile_navbar_item_widget.dart';

class NavbarResponsiveRightRowWidget extends StatefulWidget {
  final Function(int) onNavbarItemClickListener;
  final bool? rowWithoutTitles;
  final bool? rowWithoutTitlesAndSpacing;
  final bool? rowWithoutTitlesAndSpacingWithMenu;

  const NavbarResponsiveRightRowWidget({super.key, required this.onNavbarItemClickListener, this.rowWithoutTitles, this.rowWithoutTitlesAndSpacing, this.rowWithoutTitlesAndSpacingWithMenu});

  @override
  State<NavbarResponsiveRightRowWidget> createState() => _NavbarResponsiveRightRowWidgetState();
}

class _NavbarResponsiveRightRowWidgetState extends State<NavbarResponsiveRightRowWidget> {

  int _currentSelectedNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.rowWithoutTitles == true) {
      return buildRowWithoutTitles();
    } else if (widget.rowWithoutTitlesAndSpacing == true) {
      return buildRowWithoutTitlesAndSpacing();
    }  else if (widget.rowWithoutTitlesAndSpacingWithMenu == true) {
      return buildRowWithoutTitlesAndSpacingWithMenu();
    }  else {
      return buildNormalRow();
    }
  }

  Widget buildNormalRow() {
    return Row(
      children: [
        NabBarItemWidget(
          title: "Home",
          icon: CupertinoIcons.house_fill,
          index: 0,
          color: _currentSelectedNavIndex == 0
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 0;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          bottomBorderColor: _currentSelectedNavIndex == 0 ? linkedInBlack000000 : linkedInWhiteFFFFFF,
          borderWidth: 80,
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          title: "Network",
          icon: FontAwesomeIcons.userGroup,
          index: 1,
          color: _currentSelectedNavIndex == 1
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 1;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          bottomBorderColor: _currentSelectedNavIndex == 1 ? linkedInBlack000000 : linkedInWhiteFFFFFF,
          borderWidth: 80,
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          title: "Jobs",
          icon: FontAwesomeIcons.briefcase,
          index: 2,
          color: _currentSelectedNavIndex == 2
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 2;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          bottomBorderColor: _currentSelectedNavIndex == 2 ? linkedInBlack000000 : linkedInWhiteFFFFFF,
          borderWidth: 80,

        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          title: "Messaging",
          icon: FontAwesomeIcons.solidMessage,
          index: 3,
          color: _currentSelectedNavIndex == 3
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 3;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          bottomBorderColor: _currentSelectedNavIndex == 3 ? linkedInBlack000000 : linkedInWhiteFFFFFF,
          borderWidth: 80,
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          title: "Notifications",
          icon: FontAwesomeIcons.solidBell,
          index: 4,
          color: _currentSelectedNavIndex == 4
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 4;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          bottomBorderColor: _currentSelectedNavIndex == 4 ? linkedInBlack000000 : linkedInWhiteFFFFFF,
          borderWidth: 80,
        ),
        const SizedBox(
          width: 10,
        ),
        ProfileNavBarItem(
            title: "Me",
            isProfile: true,
            icon: Icons.arrow_drop_down,
            onTap: () {}
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: double.infinity,
          width: 1,
          color: linkedInMediumGrey86888A.withOpacity(.2),
        ),
        const SizedBox(
          width: 20,
        ),
        ProfileNavBarItem(
            title: "Tools",
            isProfile: false,
            icon: Icons.arrow_drop_down,
            onTap: () {}
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          title: "Post a job",
          icon: FontAwesomeIcons.file,
          index: 5,
          color: _currentSelectedNavIndex == 5
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 5;
            });
          },
          bottomBorderColor: _currentSelectedNavIndex == 5 ? linkedInBlack000000 : linkedInWhiteFFFFFF,
          borderWidth: 80,
        ),
      ],
    );
  }

  Widget buildRowWithoutTitles() {
    return Row(
      children: [
        NabBarItemWidget(
          icon: CupertinoIcons.house_fill,
          index: 0,
          color: _currentSelectedNavIndex == 0
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 0;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          borderWidth: 75,
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.userGroup,
          index: 1,
          color: _currentSelectedNavIndex == 1
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 1;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          borderWidth: 75,
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.briefcase,
          index: 2,
          color: _currentSelectedNavIndex == 2
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 2;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          borderWidth: 75,
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.solidMessage,
          index: 3,
          color: _currentSelectedNavIndex == 3
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 3;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          borderWidth: 75,
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.solidBell,
          index: 4,
          color: _currentSelectedNavIndex == 4
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 4;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          borderWidth: 75,
        ),
        const SizedBox(
          width: 10,
        ),
        ProfileNavBarItem(
            isProfile: true,
            onTap: () {}
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: double.infinity,
          width: 1,
          color: linkedInMediumGrey86888A.withOpacity(.2),
        ),
        const SizedBox(
          width: 20,
        ),
        ProfileNavBarItem(
            isProfile: false,
            onTap: () {}
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.file,
          index: 5,
          color: _currentSelectedNavIndex == 5
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 5;
            });
          },
          borderWidth: 75,
        ),
      ],
    );
  }

  Widget buildRowWithoutTitlesAndSpacing() {
    return Row(
      children: [
        NabBarItemWidget(
          icon: CupertinoIcons.house_fill,
          index: 0,
          color: _currentSelectedNavIndex == 0
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 0;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.userGroup,
          index: 1,
          color: _currentSelectedNavIndex == 1
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 1;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.briefcase,
          index: 2,
          color: _currentSelectedNavIndex == 2
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 2;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.solidMessage,
          index: 3,
          color: _currentSelectedNavIndex == 3
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 3;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.solidBell,
          index: 4,
          color: _currentSelectedNavIndex == 4
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 4;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        ProfileNavBarItem(
            isProfile: true,
            onTap: () {}
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: double.infinity,
          width: 1,
          color: linkedInMediumGrey86888A.withOpacity(.2),
        ),
        const SizedBox(
          width: 20,
        ),
        ProfileNavBarItem(
            isProfile: false,
            onTap: () {}
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.file,
          index: 5,
          color: _currentSelectedNavIndex == 5
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 5;
            });
          },
        ),
      ],
    );
  }

  Widget buildRowWithoutTitlesAndSpacingWithMenu() {
    return Row(
      children: [
        NabBarItemWidget(
          icon: CupertinoIcons.house_fill,
          index: 0,
          color: _currentSelectedNavIndex == 0
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 0;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.userGroup,
          index: 1,
          color: _currentSelectedNavIndex == 1
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 1;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.briefcase,
          index: 2,
          color: _currentSelectedNavIndex == 2
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 2;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.solidMessage,
          index: 3,
          color: _currentSelectedNavIndex == 3
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 3;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          icon: FontAwesomeIcons.solidBell,
          index: 4,
          color: _currentSelectedNavIndex == 4
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 4;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        ProfileNavBarItem(
            isProfile: true,
            onTap: () {}
        ),
        const SizedBox(
          width: 15,
        ),
        const Icon(
          Icons.more_horiz,
          color: linkedInMediumGrey86888A,
        )
      ],
    );
  }

}
