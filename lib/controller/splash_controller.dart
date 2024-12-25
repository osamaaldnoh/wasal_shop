import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/bottom_bar_screen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 5), () {
      Get.off(BottomBarScreen(), transition: Transition.fade);
    });
  }
}
