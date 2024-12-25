import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/app_layout.dart';

import '../../const/const_colors.dart';

inputDecoration(
    BuildContext context, String lable, String hint, IconData iconData) {
  final size = AppLayout.getSize(context);
  return InputDecoration(
    contentPadding: EdgeInsets.all(size.width * 0.1 / 2.5),
    label: Text(
      lable,
      style: TextStyle(
        color: ConstColors.blackLight,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    ),
    hintText: hint,
    hintStyle: TextStyle(
      color: ConstColors.blackLight,
      fontWeight: FontWeight.w600,
      fontSize: 20,
    ),
    suffixIcon: Padding(
      padding: const EdgeInsets.all(8.0),
      child: FaIcon(
        size: 25,
        iconData,
        color: ConstColors.blackLight,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ConstColors.blackLight, width: 2),
      borderRadius: BorderRadius.circular(15),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ConstColors.blackLight, width: 2),
      borderRadius: BorderRadius.circular(15),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: ConstColors.blackLight, width: 2),
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
