import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/const_colors.dart';
import 'package:wasal_shop/screen/home_screen.dart';

import '../widget/bottom_bar_widget.dart';

class BottomBarScreen extends StatefulWidget {
  static String routName = 'BottomBarScreen';
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late List<Map<String, dynamic>> _page;

  int _currentIndex = 0;

  changecurrentIndex(int index) {
    _currentIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    _page = [
      {
        'title': 'Home',
        'page': HomeScreen(),
      },
      {
        'title': 'Search',
        'page': HomeScreen(),
      },
      {
        'title': 'Sections',
        'page': HomeScreen(),
      },
      {
        'title': 'Cart',
        'page': HomeScreen(),
      },
      {
        'title': 'Account',
        'page': HomeScreen(),
      },
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ConstColors.backgrountLayout,
        appBar: AppBar(
          iconTheme: IconThemeData(color: ConstColors.blackLight),
          centerTitle: true,
          title: Text(
            'Shop',
            style: TextStyle(
              color: ConstColors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: ConstColors.backgrountLayout,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  messageAndNotification(context, FontAwesomeIcons.bell, '1'),
                  SizedBox(
                    width: 5,
                  ),
                  messageAndNotification(
                      context, FontAwesomeIcons.message, '1'),
                ],
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: ConstColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        body: _page[_currentIndex]['page'],
        bottomNavigationBar: BottomAppBar(
          // color: Colors.white,
          shape: CircularNotchedRectangle(),
          notchMargin: 0.01,
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: kBottomNavigationBarHeight * 0.98,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: BottomNavigationBar(

                onTap: (valu) {},
                unselectedItemColor: ConstColors.blackLight,
                selectedItemColor: ConstColors.iconColors,
                items: bottomNavigationBarWidget(),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            backgroundColor: ConstColors.iconColors,
            hoverElevation: 10,
            splashColor: Colors.black12,
            tooltip: 'Search',
            elevation: 4,
            child: FaIcon(FontAwesomeIcons.search),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
// BottomNavigationBar(
// items: ,
// unselectedItemColor: Colors.black,
// selectedItemColor: Colors.red,
// ),
