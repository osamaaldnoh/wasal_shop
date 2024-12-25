import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../model/data_home.dart';

class DataHomeController extends GetxController {
  static DataHomeController instans = Get.find();
  RxList<Map<String, dynamic>> _dataHome = RxList([
    {
      'dId': 1,
      'dName': 'image1',
      'dImage':
          'https://ocdn.eu/pulscms-transforms/1/5u5k9kpTURBXy82OWE2OWZmNWQxMDgwNGYzY2IxMmNiMjI3YzdhODQ1NS5qcGeSlQMAzFDNCgDNBaCTBc0DFs0Brt4AAaEwBQ',
    },
    {
      'dId': 2,
      'dName': 'image2',
      'dImage':
          'https://media.istockphoto.com/id/1249219777/photo/shopping-online-concept-parcel-or-paper-cartons-with-a-shopping-cart-logo-in-a-trolley-on-a.jpg?s=612x612&w=is&k=20&c=Jt9A6maf_tRKm4R0JBgr79N8piet2jqiEzzESUEGPF8=',
    },
    {
      'dId': 3,
      'dName': 'image3',
      'dImage':
          'https://thumbs.dreamstime.com/z/laptop-cart-icon-online-shopping-social-media-networking-online-marketing-payment-concept-laptop-cart-115642444.jpg',
    },
    {
      'dId': 4,
      'dName': 'image4',
      'dImage':
          'https://st2.depositphotos.com/2060347/6181/i/450/depositphotos_61813551-stock-photo-car-and-key-in-shopping.jpg',
    },
    {
      'dId': 5,
      'dName': 'image5',
      'dImage':
          'https://st2.depositphotos.com/2060347/6181/i/450/depositphotos_61813551-stock-photo-car-and-key-in-shopping.jpg',
    },
  ]);
  RxList<Map<String, dynamic>> get dataHome => RxList([..._dataHome]);

  @override
  onReady() {
    super.onReady();
    getData();
  }

  getData() {
    _dataHome.forEach((element) {
      DataHome.jaon(element);
    });
  }
}
