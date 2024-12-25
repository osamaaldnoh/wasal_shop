import 'package:flutter/material.dart';
import 'package:wasal_shop/const/app_layout.dart';

import '../const/const_colors.dart';
import '../widget/accounting_basics_widget/accounting_basics_container_widget.dart';
import '../widget/home_widget/search_home_widget.dart';

class AccountingBasicsScreen extends StatefulWidget {
  static String routName = 'AccountingBasicsScreen';

  const AccountingBasicsScreen({Key? key}) : super(key: key);

  @override
  State<AccountingBasicsScreen> createState() => _AccountingBasicsScreenState();
}

class _AccountingBasicsScreenState extends State<AccountingBasicsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
        body: Padding(
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
                      decoration: searchHomeWidget('منتج', context),
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
                height: size.width * 0.1 / 3.4,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: ConstColors.white,
                    //indicatorWeight: 10,
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    unselectedLabelColor: ConstColors.black,
                    indicator: BoxDecoration(
                      color: ConstColors.iconColors,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),

                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text("APPS"),
                      ),
                      Tab(child: Tab(child: Text('data'))),
                      Text('data'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                        //physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 8,
                        itemBuilder: (ctx, index) {
                          return AccountingBasicsContainerWidget();
                        }),
                    Text('Osa'),
                    Text('Os'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
