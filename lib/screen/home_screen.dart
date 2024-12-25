import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wasal_shop/const/const_colors.dart';

import '../const/app_layout.dart';

import '../controller/data_home_controller.dart';
import '../widget/home_widget/company_home_widget.dart';
import '../widget/home_widget/courses_home_widget.dart';
import '../widget/home_widget/search_home_widget.dart';

class HomeScreen extends StatefulWidget {
  static String routName = 'HomeScreen';

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

DataHomeController dataHomeController = Get.put(DataHomeController());

class _HomeScreenState extends State<HomeScreen> {
  int activateIndex = 0;
  List imageURL = [
    'https://ocdn.eu/pulscms-transforms/1/5u5k9kpTURBXy82OWE2OWZmNWQxMDgwNGYzY2IxMmNiMjI3YzdhODQ1NS5qcGeSlQMAzFDNCgDNBaCTBc0DFs0Brt4AAaEwBQ',
    'https://media.istockphoto.com/id/1249219777/photo/shopping-online-concept-parcel-or-paper-cartons-with-a-shopping-cart-logo-in-a-trolley-on-a.jpg?s=612x612&w=is&k=20&c=Jt9A6maf_tRKm4R0JBgr79N8piet2jqiEzzESUEGPF8=',
    'https://thumbs.dreamstime.com/z/laptop-cart-icon-online-shopping-social-media-networking-online-marketing-payment-concept-laptop-cart-115642444.jpg',
    'https://st2.depositphotos.com/2060347/6181/i/450/depositphotos_61813551-stock-photo-car-and-key-in-shopping.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: ConstColors.backgrountLayout,
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      width: 5,
                    ),
                    listNextSearch(context),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider.builder(
                  itemCount: imageURL.length,
                  itemBuilder: (ctx, index, reIndex) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            imageURL[index],
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: size.width * 0.5 / 1.2,
                    viewportFraction: 1,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activateIndex = index;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: buildIndicator(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'اسم الشركات',
                  style: TextStyle(
                    fontFamily: 'DINNEXTLTARABIC',
                    fontSize: 23,
                    color: ConstColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.width * 0.5 / 1.6,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: dataHomeController.dataHome.toList().length,
                      itemBuilder: (ctx, index) {
                        return CompanyHomeWidget();
                      }),
                ),
                Text(
                  'الكورسات',
                  style: TextStyle(
                    fontFamily: 'DINNEXTLTARABIC',
                    fontSize: 23,
                    color: ConstColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.width * 0.6,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (ctx, index) {
                        return CoursesHomeWidget();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activateIndex,
        count: imageURL.length,
        effect: SlideEffect(
          dotColor: ConstColors.blackLight.withOpacity(0.2),
          activeDotColor: ConstColors.iconColors,
          dotHeight: MediaQuery.of(context).size.height * 0.1 / 9,
          dotWidth: MediaQuery.of(context).size.width * 0.2 / 9,
        ),
      );
}

List<Map<String, dynamic>> ticketList = [
  {
    'o': 'o',
  },
  {
    'o': 'o',
  },
  {
    'o': 'o',
  },
  {
    'o': 'o',
  },
  {
    'o': 'o',
  },
];
