import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/app_layout.dart';
import 'package:wasal_shop/const/const_colors.dart';
import 'package:wasal_shop/widget/sigin_widget/textformfield_widget.dart';

import '../widget/bottom_bar_isnot_login_widget.dart';

class SiginScreen extends StatelessWidget {
  static String routName = 'SiginScreen';
  const SiginScreen({Key? key}) : super(key: key);

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
                'تسجيل حساب',
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
                'أكمل التفاصيل الخاصة بك أو تابع\n مع وسائل التواصل الاجتماعي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ConstColors.blackLight,
                  fontSize: size.width * 0.1 / 2.6,
                ),
              ),
              SizedBox(
                height: size.width * 0.1,
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
                height: size.width * 0.1 / 1.8,
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
                height: size.width * 0.1 / 1.8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1 / 1.5,
                ),
                child: TextFormField(
                  decoration: inputDecoration(
                    context,
                    'تأكيد كلمة المرور',
                    'أعد إدخال كلمة المرور',
                    FontAwesomeIcons.lock,
                  ),
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
                  'أكمل',
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
                height: size.width * 0.1 / 1.2,
              ),
              Text(
                'من خلال الاستمرار في تأكيد موافقتك \n بدون شروط وشروط',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 2,
          onTap: (val) {},
          items: bottomBarSiginWidget(context),
        ),
      ),
    );
  }
}
