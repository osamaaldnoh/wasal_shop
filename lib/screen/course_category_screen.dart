import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/app_layout.dart';
import 'package:wasal_shop/widget/course_category_widget/course_category_card_widget.dart';

import '../const/const_colors.dart';
import '../widget/bottom_bar_isnot_login_widget.dart';
import '../widget/home_widget/search_home_widget.dart';

class CourseCategoriesScreen extends StatelessWidget {
  static String routName = 'CourseCategoriesScreen';

  CourseCategoriesScreen({Key? key}) : super(key: key);

  String imag =
      'https://ocdn.eu/pulscms-transforms/1/5u5k9kpTURBXy82OWE2OWZmNWQxMDgwNGYzY2IxMmNiMjI3YzdhODQ1NS5qcGeSlQMAzFDNCgDNBaCTBc0DFs0Brt4AAaEwBQ';

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
            bottom: 20,
            top: 10,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        style: TextStyle(
                          color: ConstColors.blackLight,
                          fontSize: 20,
                        ),
                        cursorColor: ConstColors.iconColors,
                        cursorHeight: 30,
                        textDirection: TextDirection.rtl,
                        decoration: searchHomeWidget('دورة', context),
                        autofocus: true,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.1 / 3.4,
                    ),
                    listNextSearch(context),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1 / 1.9,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CourseCategoryCardWidget(
                    context,
                    imag,
                    'أساسيات الحاسبة',
                    'لوريم إيبسوم هو ببساطة النص الوهمي لصناعة الطباعة والكتابة',
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {},
          items: bottomBarIsNotLoginWidget(context),
        ),
      ),
    );
  }
}

//
// bottomSheet: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Row(
// children: [
// FaIcon(
// FontAwesomeIcons.signIn,
// ),
// Text('تسجيل الدخول'),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// FaIcon(
// FontAwesomeIcons.signIn,
// ),
// Text('تسجيل الدخول'),
// ],
// ),
// ],
// ),
