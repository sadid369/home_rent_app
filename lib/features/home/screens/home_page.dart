// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

import 'package:home_rent/helper/routes_helper.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_text_style.dart';
import '../../../constants/fake_api_data.dart';
import '../widgets/custom_button.dart';
import '../widgets/item_card.dart';
import '../widgets/item_slider.dart';

enum Category { apartment, house, villa, hotel }

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
              Container(
                margin: EdgeInsets.only(
                  top: height * 0.05,
                  bottom: 22,
                  left: width * 0.05,
                  right: width * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: AppTextStyle.textStyleSmall(
                              width, AppColors.grey),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Jakarta',
                              style: AppTextStyle.textStyleMedium(
                                  width, Colors.black),
                            ),
                            SizedBox(width: width * 0.02),
                            AppIcons.arrowDown(
                              height: height * 0.0075, //6.11px
                              width: width * 0.026, //10px
                            ),
                          ],
                        )
                      ],
                    ),
                    Badge(
                      child: AppIcons.notification(
                        color: AppColors.black,
                        height: height * 0.0264, //21.5px
                        width: width * 0.0453, //17px
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: height * 0.022,
                  left: width * 0.05,
                  right: width * 0.05,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.75,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.greyExtraLight2,
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(width * 0.04),
                            child: AppIcons.search(
                              height: height * 0.0197,
                              width: width * 0.0426,
                            ),
                          ),
                          hintText: 'Search address, or near you ',
                          hintStyle:
                              AppTextStyle.textStyleSmall(width, Colors.grey),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    CustomButton(
                      width: width * 0.128,
                      height: height * 0.0591,
                      radius: 12,
                      bg1: AppColors.blueLight,
                      bg2: AppColors.blue,
                      content: AppIcons.filter(
                        height: height * 0.0197,
                        width: width * 0.0426,
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: height * 0.0333,
                  left: width * 0.05,
                  right: width * 0.05,
                ), // 27px,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      width: width * 0.1840, // 37px
                      height: height * 0.0419, //14px
                      radius: 10,
                      bg1: selectedCategory == Category.house
                          ? AppColors.blueLight
                          : AppColors.white,
                      bg2: selectedCategory == Category.house
                          ? AppColors.blue
                          : AppColors.white,
                      content: Text(
                        "House",
                        style: selectedCategory == Category.house
                            ? AppTextStyle.textStyleSmall(
                                width, AppColors.white)
                            : AppTextStyle.textStyleSmall(
                                width, AppColors.greyDark),
                      ),
                      onTap: () {
                        setState(() {
                          selectedCategory = Category.house;
                        });
                      },
                    ),
                    CustomButton(
                      width: width * 0.22, // 37px
                      height: height * 0.0419, //14px
                      radius: 10,
                      bg1: selectedCategory == Category.apartment
                          ? AppColors.blueLight
                          : AppColors.white,
                      bg2: selectedCategory == Category.apartment
                          ? AppColors.blue
                          : AppColors.white,
                      content: Text(
                        "Apartment",
                        style: selectedCategory == Category.apartment
                            ? AppTextStyle.textStyleSmall(
                                width, AppColors.white)
                            : AppTextStyle.textStyleSmall(
                                width, AppColors.greyDark),
                      ),
                      onTap: () {
                        setState(() {
                          selectedCategory = Category.apartment;
                        });
                      },
                    ),
                    CustomButton(
                      width: width * 0.1840, // 37px
                      height: height * 0.0419, //14px
                      radius: 10,
                      bg1: selectedCategory == Category.hotel
                          ? AppColors.blueLight
                          : AppColors.white,
                      bg2: selectedCategory == Category.hotel
                          ? AppColors.blue
                          : AppColors.white,
                      content: Text(
                        "Hotel",
                        style: selectedCategory == Category.hotel
                            ? AppTextStyle.textStyleSmall(
                                width, AppColors.white)
                            : AppTextStyle.textStyleSmall(
                                width, AppColors.greyDark),
                      ),
                      onTap: () {
                        setState(() {
                          selectedCategory = Category.hotel;
                        });
                      },
                    ),
                    CustomButton(
                      width: width * 0.1840, // 37px
                      height: height * 0.0419, //14px
                      radius: 10,
                      bg1: selectedCategory == Category.villa
                          ? AppColors.blueLight
                          : AppColors.white,
                      bg2: selectedCategory == Category.villa
                          ? AppColors.blue
                          : AppColors.white,
                      content: Text(
                        "Villa",
                        style: selectedCategory == Category.villa
                            ? AppTextStyle.textStyleSmall(
                                width, AppColors.white)
                            : AppTextStyle.textStyleSmall(
                                width, AppColors.greyDark),
                      ),
                      onTap: () {
                        setState(() {
                          selectedCategory = Category.villa;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: height * 0.018,
                  left: width * 0.05,
                  right: width * 0.05,
                ), // 24px
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Near from you",
                      style:
                          AppTextStyle.textStyleMedium(width, AppColors.black),
                    ),
                    CustomButton(
                        width: width * 0.2,
                        height: height * 0.0419,
                        content: Text(
                          "See more",
                          style: AppTextStyle.textStyleSmall(
                              width, AppColors.greyDark),
                        ),
                        onTap: () {})
                  ],
                ),
              ),
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
              Container(
                margin: EdgeInsets.only(
                  left: width * 0.05,
                  right: width * 0.05,
                ), // 24px
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best for you",
                      style:
                          AppTextStyle.textStyleMedium(width, AppColors.black),
                    ),
                    CustomButton(
                        width: width * 0.2,
                        height: height * 0.0419,
                        content: Text(
                          "See more",
                          style: AppTextStyle.textStyleSmall(
                              width, AppColors.greyDark),
                        ),
                        onTap: () {})
                  ],
                ),
              ),
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
