import 'package:get/get.dart';
import 'package:home_rent/features/item_detail/screens/item_detail.dart';

import '../features/home/screens/home_page.dart';

class RoutesHelper {
  static String home = "/home";
  static String detail = "/item-detail";

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(
        name: detail,
        page: () {
          return ItemDetail(house: Get.arguments);
        }),
  ];
}
