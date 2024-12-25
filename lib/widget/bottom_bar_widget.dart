import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/app_layout.dart';

import '../const/bottom_bar_list_icon.dart';
import '../const/const_colors.dart';

BottomBarListIcon bottomBarListIcon = BottomBarListIcon();
List<BottomNavigationBarItem> bottomNavigationBarWidget() {
  IconData iconData;
  String lable = '';
  List<BottomNavigationBarItem> bottomNavItems = [];
  for (int i = 0; i < bottomBarListIcon.dataIcons.length; i++) {
    iconData = bottomBarListIcon.dataIcons[i];
    var bottonNav = i == 2
        ? BottomNavigationBarItem(
            activeIcon: null,
            icon: Icon(null),
            label: '',
          )
        : BottomNavigationBarItem(
            icon: FaIcon(iconData),
            label: lable,
          );

    bottomNavItems.add(bottonNav);
  }
  return bottomNavItems;
}

messageAndNotification(BuildContext context, IconData icon, String numberMess) {
  final size = AppLayout.getSize(context);

  return Stack(
    children: [
      Container(
        width: size.width * 0.1,
        height: size.height * 0.1,
        //padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ConstColors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8,
            ),
          ],
        ),
        child: Center(
          child: FaIcon(
            icon,
            color: ConstColors.blackLight,
          ),
        ),
      ),
      Positioned(
        right: 0,
        top: 0,
        child: Container(
          width: size.width * 0.1 / 3,
          height: MediaQuery.of(context).size.width * 0.1 / 3,
          decoration: BoxDecoration(
            color: ConstColors.iconColors,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              numberMess,
              style: TextStyle(
                color: ConstColors.white,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
