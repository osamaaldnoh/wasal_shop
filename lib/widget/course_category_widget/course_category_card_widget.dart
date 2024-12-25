import 'package:flutter/material.dart';
import 'package:wasal_shop/const/app_layout.dart';

import '../../const/const_colors.dart';

CourseCategoryCardWidget(BuildContext context, String imag, String nameCourse,
    String descreptionCourse) {
  final size = AppLayout.getSize(context);

  return Column(
    children: [
      Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imag,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: size.width * 0.1,
            child: Container(
              width: size.width * 0.5,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  )),
              child: Text(
                nameCourse,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: ConstColors.white,
                  fontSize: size.width * 0.1 / 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: size.width * 0.3 / 1.3,
            child: Container(
              width: size.width * 0.9,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  )),
              child: Text(
                descreptionCourse,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: ConstColors.white,
                  fontSize: size.width * 0.1 / 2.9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
