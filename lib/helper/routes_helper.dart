import 'package:get/get.dart';
import 'package:home_rent/features/bookmark/screens/bookmark_screen.dart';
import 'package:home_rent/features/item_detail/screens/item_detail.dart';

import '../features/Profile/screens/profile_screen.dart';
import '../features/help/screens/help_screen.dart';
import '../features/home/screens/home_page.dart';
import '../features/message/screens/message_screen.dart';
import '../features/nearby/screens/nearby_screen.dart';
import '../features/notification/screens/notification_screen.dart';
import '../features/setting/screens/setting_screen.dart';

class RoutesHelper {
  static String home = "/home";
  static String detail = "/item-detail";
  static String bookmark = "/bookmark";
  static String setting = "/setting";
  static String help = "/help";
  static String notification = "/notification";
  static String message = "/message";
  static String profile = "/profile";
  static String nearby = "/nearby";

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(
        name: detail,
        page: () {
          return ItemDetail(house: Get.arguments);
        }),
    GetPage(name: nearby, page: () => const NearbyScreen()),
    GetPage(name: help, page: () => const HelpScreen()),
    GetPage(name: message, page: () => const MessageScreen()),
    GetPage(name: profile, page: () => const ProfileScreen()),
    GetPage(name: notification, page: () => const NotificationScreen()),
    GetPage(name: bookmark, page: () => const BookmarkScreen()),
    GetPage(name: setting, page: () => const SettingScreen()),
  ];
}
