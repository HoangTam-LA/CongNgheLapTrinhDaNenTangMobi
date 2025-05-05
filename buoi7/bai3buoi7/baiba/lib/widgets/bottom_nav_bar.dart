import 'package:baiba/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            svgSrc: "assets/icons/calendar.svg",
            title: "Today",
            key: UniqueKey(),
            press: () {},
          ),
          BottomNavItem(
            svgSrc: "assets/icons/gym.svg",
            title: "All Exercises",
            isActive: true,
            key: UniqueKey(),
            press: () {},
          ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "Settings",
            key: UniqueKey(),
            press: () {},
          ),
        ],
      ),
    );
  }
}
