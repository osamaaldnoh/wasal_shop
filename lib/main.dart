import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasal_shop/const/const_colors.dart';
import 'package:wasal_shop/screen/accounting_basics_screen.dart';
import 'package:wasal_shop/screen/bottom_bar_screen.dart';
import 'package:wasal_shop/screen/course_category_screen.dart';
import 'package:wasal_shop/screen/forgot_password_screen.dart';
import 'package:wasal_shop/screen/home_screen.dart';
import 'package:wasal_shop/screen/login_screen.dart';
import 'package:wasal_shop/screen/sigin_screen.dart';
import 'package:wasal_shop/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: ConstColors.backgrountLayout,
      ),
      home: SplashScreen(),
      routes: {
        BottomBarScreen.routName: (_) => BottomBarScreen(),
        SiginScreen.routName: (_) => SiginScreen(),
        LoginScreen.routName: (_) => LoginScreen(),
        HomeScreen.routName: (_) => HomeScreen(),
        ForgotPasswordScreen.routName: (_) => ForgotPasswordScreen(),
        CourseCategoriesScreen.routName: (_) => CourseCategoriesScreen(),
        AccountingBasicsScreen.routName: (_) => AccountingBasicsScreen(),
      },
    );
  }
}
