import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/app_layout.dart';

import '../../const/const_colors.dart';

searchHomeWidget(String search, BuildContext context) {
  final size = AppLayout.getSize(context);
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(
      size.width * 0.1 / 2.2,
      size.width * 0.1 / 3.5,
      size.width * 0.1 / 2.0,
      size.width * 0.1 / 7,
    ),
    prefixIcon: Icon(
      Icons.search,
      color: ConstColors.iconColors,
    ),
    fillColor: ConstColors.white,
    filled: true,
    hintText: ' بحث عن $search ...',
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: ConstColors.white,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: ConstColors.white,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: ConstColors.white,
      ),
    ),
  );
}

listNextSearch(BuildContext context) {
  final size = AppLayout.getSize(context);
  return Expanded(
    flex: 1,
    child: Container(
      padding: EdgeInsets.only(
        left: size.width * 0.1 / 2.2,
        top: size.width * 0.1 / 3.5,
        right: size.width * 0.1 / 2.0,
        bottom: size.width * 0.1 / 3.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: ConstColors.white,
      ),
      child: Center(
          child: FaIcon(
        FontAwesomeIcons.list,
      )),
    ),
  );
}
