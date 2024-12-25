import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasal_shop/const/const_colors.dart';

import '../../const/app_layout.dart';

class CoursesHomeWidget extends StatelessWidget {
  CoursesHomeWidget({Key? key}) : super(key: key);
  String imag =
      'https://ocdn.eu/pulscms-transforms/1/5u5k9kpTURBXy82OWE2OWZmNWQxMDgwNGYzY2IxMmNiMjI3YzdhODQ1NS5qcGeSlQMAzFDNCgDNBaCTBc0DFs0Brt4AAaEwBQ';
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ConstColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: NetworkImage(imag),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'احتراف المحاسبة',
                    style: TextStyle(
                      color: ConstColors.iconColors,
                      fontSize: size.width * 0.1 / 3,
                    ),
                  ),
                  Text(
                    'المدرب/ أسامة',
                    style: TextStyle(
                      color: ConstColors.blackLight,
                      fontSize: size.width * 0.1 / 3,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: ConstColors.blackLight,
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidMoneyBill1,
                        size: 15,
                      ),
                      Text(
                        '100 ر.ي',
                        style: TextStyle(
                          fontSize: size.width * 0.1 / 3,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.clock,
                        size: 15,
                      ),
                      Text(
                        '100 ساعة',
                        style: TextStyle(
                          fontSize: size.width * 0.1 / 3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
