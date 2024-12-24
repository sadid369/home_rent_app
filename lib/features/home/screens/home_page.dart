// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

import 'package:home_rent/helper/routes_helper.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_text_style.dart';
import '../../../constants/fake_api_data.dart';
import '../../../helper/enum_category.dart';
import '../widgets/category_list.dart';
import '../widgets/header.dart';
import '../widgets/item_card.dart';
import '../widgets/item_slider.dart';
import '../widgets/search_and_filter.dart';
import '../widgets/sub_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _advancedDrawerController = AdvancedDrawerController();
  Category selectedCategory = Category.house;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return AdvancedDrawer(
      drawer: SafeArea(
        child: ListTileTheme(
          selectedTileColor: AppColors.white,
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              ListTile(
                onTap: () {},
                leading: AppIcons.home(
                  color: Colors.white,
                  width: width * 0.0427,
                  height: height * 0.0205,
                ),
                title: Text(
                  'Home',
                  style: AppTextStyle.textStyleMedium(width, Colors.white),
                ),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(RoutesHelper.profile);
                },
                leading: AppIcons.profile(
                  color: Colors.white,
                  width: width * 0.0427,
                  height: height * 0.0205,
                ),
                title: Text('Profile',
                    style: AppTextStyle.textStyleMedium(width, Colors.white)),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(RoutesHelper.nearby);
                },
                leading: AppIcons.location(
                  color: Colors.white,
                  width: width * 0.0427,
                  height: height * 0.0205,
                ),
                title: Text('Nearby',
                    style: AppTextStyle.textStyleMedium(width, Colors.white)),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              Divider(
                color: AppColors.white,
                endIndent: width * 0.35,
              ),
              SizedBox(
                height: height * 0.002,
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(RoutesHelper.bookmark);
                },
                leading: AppIcons.save(
                  color: Colors.white,
                  width: width * 0.0427,
                  height: height * 0.0205,
                ),
                title: Text(
                  'Bookmark',
                  style: AppTextStyle.textStyleMedium(width, Colors.white),
                ),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(RoutesHelper.notification);
                },
                leading: Badge(
                  child: AppIcons.notification(
                    color: Colors.white,
                    width: width * 0.0427,
                    height: height * 0.0205,
                  ),
                ),
                title: Text(
                  'Notification',
                  style: AppTextStyle.textStyleMedium(width, Colors.white),
                ),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(RoutesHelper.message);
                },
                leading: Badge(
                  child: AppIcons.notification(
                    color: Colors.white,
                    width: width * 0.0427,
                    height: height * 0.0205,
                  ),
                ),
                title: Text(
                  'Message',
                  style: AppTextStyle.textStyleMedium(width, Colors.white),
                ),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              Divider(
                color: AppColors.white,
                endIndent: width * 0.35,
              ),
              SizedBox(
                height: height * 0.002,
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(RoutesHelper.setting);
                },
                leading: AppIcons.setting(
                  color: Colors.white,
                  width: width * 0.0427,
                  height: height * 0.0205,
                ),
                title: Text(
                  'Setting',
                  style: AppTextStyle.textStyleMedium(width, Colors.white),
                ),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(RoutesHelper.help);
                },
                leading: AppIcons.help(
                  color: Colors.white,
                  width: width * 0.0427,
                  height: height * 0.0205,
                ),
                title: Text(
                  'Help',
                  style: AppTextStyle.textStyleMedium(width, Colors.white),
                ),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              ListTile(
                onTap: () {},
                leading: AppIcons.logout(
                  color: Colors.white,
                  width: width * 0.0427,
                  height: height * 0.0205,
                ),
                title: Text(
                  'Logout',
                  style: AppTextStyle.textStyleMedium(width, Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: AppColors.blue),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        backgroundColor: AppColors.greyExtraLight,
        body: SizedBox(
          width: width,
          height: height,
          child: Column(
            children: [
              Header(height: height, width: width),
              SearchAndFilter(height: height, width: width),
              CategoryList(height, width, setState),
              SubHeader(
                  title: "Near from you",
                  seeMore: "See more",
                  height: height,
                  width: width),
              Container(
                width: width,
                height: height * 0.3350,
                margin: EdgeInsets.only(
                  bottom: height * 0.018,
                  left: width * 0.05,
                ), //32px
                child: ListView.builder(
                  itemCount: housesNearby.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Get.toNamed(RoutesHelper.detail,
                              arguments: housesNearby[index]);
                        },
                        child: ItemSlider(
                            width: width, height: height, index: index));
                  },
                ),
              ),
              SubHeader(
                  title: "Best for you",
                  seeMore: "See more",
                  height: height,
                  width: width),
              Expanded(
                child: Container(
                  width: width,
                  margin: EdgeInsets.only(
                    left: width * 0.05,
                    right: width * 0.05,
                  ),
                  child: ListView.builder(
                    itemCount: bestForYou.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Get.toNamed(RoutesHelper.detail,
                                arguments: bestForYou[index]);
                          },
                          child: ItemCard(
                              width: width, height: height, index: index));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
