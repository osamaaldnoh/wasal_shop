import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/app_layout.dart';
import 'package:wasal_shop/const/const_colors.dart';
import 'package:wasal_shop/widget/sigin_widget/textformfield_widget.dart';

import '../widget/bottom_bar_isnot_login_widget.dart';

class LoginScreen extends StatelessWidget
{
  static String routName = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ConstColors.backgrountLayout,
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: size.width * 0.1 / 1.5,
          ),
          child: Column(
            children: [
              SizedBox(
                height: size.width * 0.1,
              ),
              Text(
                'مرحباً بعودتك',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ConstColors.black,
                  fontSize: size.width * 0.1 / 2,
                ),
              ),
              SizedBox(
                height: size.width * 0.1 / 2.5,
              ),
              Text(
                'قم بتسجيل الدخول باستخدام بريدك الإلكتروني وكلمة المرور\nأو تواصل مع وسائل التواصل الاجتماعي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ConstColors.blackLight,
                  fontSize: size.width * 0.1 / 2.6,
                ),
              ),
              SizedBox(
                height: size.width * 0.2 / 1.4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1 / 1.5,
                ),
                child: TextFormField(
                  decoration: inputDecoration(
                    context,
                    'البريدالالكتروني',
                    'ادخل البريد الالكتروني',
                    FontAwesomeIcons.message,
                  ),
                ),
              ),
              SizedBox(
                height: size.width * 0.1 / 1.6,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1 / 1.5,
                ),
                child: TextFormField(
                  decoration: inputDecoration(
                    context,
                    'كلمة المرور',
                    'ادخل كلمة المرور',
                    FontAwesomeIcons.lock,
                  ),
                ),
              ),
              SizedBox(
                height: size.width * 0.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1 / 1.5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'هل نسيت كلمة السر؟',
                      style: TextStyle(
                        color: ConstColors.blackLight,
                        fontSize: size.width * 0.1 / 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'تذكرنى',
                          style: TextStyle(
                            color: ConstColors.blackLight,
                            fontSize: size.width * 0.1 / 2.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Checkbox(value: false, onChanged: (val) {}),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.width * 0.1,
              ),
              MaterialButton(
                height: size.width * 0.2 / 1.9,
                color: ConstColors.iconColors,
                minWidth: size.width * 0.9,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: Text(
                  'تسجيل',
                  style: TextStyle(
                    fontSize: size.width * 0.1 / 2,
                    color: ConstColors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                height: size.width * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.google,
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  FaIcon(
                    FontAwesomeIcons.google,
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  FaIcon(
                    FontAwesomeIcons.google,
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ليس لديك حساب؟',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ConstColors.blackLight,
                      fontSize: size.width * 0.1 / 2.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'اشتراك',
                      style: TextStyle(
                        color: ConstColors.iconColors,
                        fontSize: size.width * 0.1 / 2.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 2,
          onTap: (val) {},
          items: bottomBarLoginWidget(context),
        ),
      ),
    );
  }
}
