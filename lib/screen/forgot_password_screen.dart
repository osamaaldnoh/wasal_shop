import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/const_colors.dart';

import '../const/app_layout.dart';
import '../widget/sigin_widget/textformfield_widget.dart';

class ForgotPasswordScreen extends StatelessWidget
{
  static String routName = 'ForgotPasswordScreen';

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ConstColors.backgrountLayout,
        appBar: AppBar(
          backgroundColor: ConstColors.backgrountLayout,
          elevation: 0,
        ),
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
                'هل نسيت كلمة السر',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ConstColors.black,
                  fontSize: size.width * 0.1 / 2,
                ),
              ),
              SizedBox(
                height: size.width * 0.1 / 2,
              ),
              Text(
                'الرجاء إدخال البريد الإلكتروني الخاص بك ونحن نكمل الخاص بك \n لك رابط للعودة إلى حسابك',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ConstColors.blackLight,
                  fontSize: size.width * 0.1 / 2.6,
                ),
              ),
              SizedBox(
                height: size.width * 0.2 / 1.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1 / 1.5,
                ),
                child: TextFormField(
                  decoration: inputDecoration(
                    context,
                    'البريدالالكتروني',
                    'ادخل بريدك الالكتروني',
                    FontAwesomeIcons.message,
                  ),
                ),
              ),
              SizedBox(
                height: size.width * 0.4,
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
                height: size.width * 0.3,
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
      ),
    );
  }
}
