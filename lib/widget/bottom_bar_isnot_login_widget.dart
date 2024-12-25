import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/app_layout.dart';
import 'package:wasal_shop/const/const_icons.dart';

import '../const/const_colors.dart';

List icon = [
  ConstIcons.signIn,
  ConstIcons.subscription,
];
List text = [
  'تسجيل الدخول',
  'اشتراك',
];

List<BottomNavigationBarItem> bottomBarIsNotLoginWidget(BuildContext context) {
  final size = AppLayout.getSize(context);
  IconData iconData;
  List<BottomNavigationBarItem> bottomNavItems = [];

  for (int i = 0; i < icon.length; i++) {
    iconData = icon[i];
    var bottonNav = BottomNavigationBarItem(
      icon: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          FaIcon(
            iconData,
            size: size.width * 0.1 / 1.9,
          ),
          SizedBox(
            width: size.width * 0.1 / 3.3,
          ),
          Text(
            text[i],
            style: TextStyle(
              fontSize: size.width * 0.1 / 2.5,
              color: ConstColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      label: '',
    );

    bottomNavItems.add(bottonNav);
  }
  return bottomNavItems;
}

List<BottomNavigationBarItem> bottomBarLoginWidget(BuildContext context) {
  final size = AppLayout.getSize(context);
  IconData iconData;
  List<BottomNavigationBarItem> bottomNavItems = [];

  for (int i = 0; i < icon.length; i++) {
    iconData = icon[i];
    var bottonNav = i == 0
        ? BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ConstColors.iconColors,
              ),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  FaIcon(
                    iconData,
                    size: size.width * 0.1 / 2.3,
                    color: ConstColors.white,
                  ),
                  SizedBox(
                    width: size.width * 0.1 / 3.7,
                  ),
                  Text(
                    text[i],
                    style: TextStyle(
                      fontSize: size.width * 0.1 / 2.5,
                      color: ConstColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          )
        : BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1 / 1.8,
              ),
              child: Wrap(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: FaIcon(
                      iconData,
                      size: size.width * 0.1 / 1.5,
                      color: ConstColors.black,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );

    bottomNavItems.add(bottonNav);
  }
  return bottomNavItems;
}

List<BottomNavigationBarItem> bottomBarSiginWidget(BuildContext context) {
  final size = AppLayout.getSize(context);
  IconData iconData;
  List<BottomNavigationBarItem> bottomNavItems = [];

  for (int i = 0; i < icon.length; i++) {
    iconData = icon[i];
    var bottonNav = i == 1
        ? BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ConstColors.iconColors,
              ),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  FaIcon(
                    iconData,
                    size: size.width * 0.1 / 2.3,
                    color: ConstColors.white,
                  ),
                  SizedBox(
                    width: size.width * 0.1 / 3.7,
                  ),
                  Text(
                    text[i],
                    style: TextStyle(
                      fontSize: size.width * 0.1 / 2.5,
                      color: ConstColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          )
        : BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1 / 1.8,
              ),
              child: Wrap(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: FaIcon(
                      iconData,
                      size: size.width * 0.1 / 1.5,
                      color: ConstColors.black,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );

    bottomNavItems.add(bottonNav);
  }
  return bottomNavItems;
}
