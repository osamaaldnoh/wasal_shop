import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/app_layout.dart';
import 'package:wasal_shop/const/const_colors.dart';

class AccountingBasicsContainerWidget extends StatelessWidget {
  AccountingBasicsContainerWidget({Key? key}) : super(key: key);
  String imag =
      'https://ocdn.eu/pulscms-transforms/1/5u5k9kpTURBXy82OWE2OWZmNWQxMDgwNGYzY2IxMmNiMjI3YzdhODQ1NS5qcGeSlQMAzFDNCgDNBaCTBc0DFs0Brt4AAaEwBQ';

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 368,
          height: 120,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ConstColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 130,
                height: 100,
                decoration: BoxDecoration(
                  color: ConstColors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(imag),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.1 / 3,
                        ),
                        child: Text(
                          'محاسبة أ&ب',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: ConstColors.iconColors,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.1 / 3,
                        ),
                        child: Text(
                          'المدرب /  عماد عقلان',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: ConstColors.blackLight,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: size.width * 0.5 / 1.1,
                          child: Divider(
                            thickness: 2,
                            height: 1, // Thickness
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.solidMoneyBill1,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '100 ر.ي',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: ConstColors.iconColors,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: size.width * 0.1 / 1.7,
                            child: VerticalDivider(
                              thickness: 2,
                              width: 1, // Thickness
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '100 ساعة',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: ConstColors.iconColors,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
