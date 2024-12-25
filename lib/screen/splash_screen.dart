import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:wasal_shop/const/app_layout.dart';
import 'package:wasal_shop/const/const_colors.dart';
import 'package:wasal_shop/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_) {
          return Scaffold(
            backgroundColor: ConstColors.iconColors,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bookOpen,
                    color: ConstColors.white,
                    size: size.width * 0.2,
                  ),
                  SizedBox(
                    height: size.width * 0.1 / 1.8,
                  ),
                  Text(
                    'Wasal',
                    style: TextStyle(
                      color: ConstColors.white,
                      fontSize: size.width * 0.1 / 1.5,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
