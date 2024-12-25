import 'package:flutter/material.dart';
import 'package:wasal_shop/const/app_layout.dart';
import 'package:wasal_shop/const/const_colors.dart';

class CompanyHomeWidget extends StatelessWidget {
  CompanyHomeWidget({Key? key}) : super(key: key);
  String ima =
      'https://st2.depositphotos.com/2060347/6181/i/450/depositphotos_61813551-stock-photo-car-and-key-in-shopping.jpg';

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: size.width * 0.2,
            width: size.width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(
                  ima,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: size.width * 0.1 / 2.2,
            width: size.width * 0.2,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: ConstColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'data',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ConstColors.blackLight,
                  fontSize: size.width * 0.1 / 3,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Container(
// height: size.width * 0.2,
// width: size.width * 0.2,
// child: Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(15),
// ),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(15),
// child: Image.network(
// ima,
// fit: BoxFit.fill,
// ),
// ),
// ),
// ),
