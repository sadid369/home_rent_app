// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_text_style.dart';
import '../../../constants/fake_api_data.dart';
import '../widgets/custom_button.dart';
import '../widgets/item_slider.dart';

enum Category { apartment, house, villa, hotel }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Category selectedCategory = Category.house;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.greyExtraLight,
      body: SizedBox(
        width: width,
        height: height,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 22,
                top: width * 0.1,
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
                        style:
                            AppTextStyle.textStyleSmall(width, AppColors.grey),
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
                  Container(
                    width: width * 0.75,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.greyExtraLight,
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
                          ? AppTextStyle.textStyleSmall(width, AppColors.white)
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
                    width: width * 0.1840, // 37px
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
                          ? AppTextStyle.textStyleSmall(width, AppColors.white)
                          : AppTextStyle.textStyleSmall(
                              width, AppColors.greyDark),
                    ),
                    onTap: () {
                      setState(() {
                        selectedCategory = Category.apartment;
                        print(selectedCategory);
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
                          ? AppTextStyle.textStyleSmall(width, AppColors.white)
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
                          ? AppTextStyle.textStyleSmall(width, AppColors.white)
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
                    style: AppTextStyle.textStyleMedium(width, AppColors.black),
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
                  return ItemSlider(width: width, height: height, index: index);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: height * 0.0296,
                left: width * 0.05,
                right: width * 0.05,
              ), // 24px
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best for you",
                    style: AppTextStyle.textStyleMedium(width, AppColors.black),
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
                    return Row(
                      children: [
                        Container(
                          width: width * 0.1973,
                          height: height * 0.0862,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(bestForYou[index].image),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              bestForYou[index].name,
                              style: AppTextStyle.textStyleMedium(
                                  width, AppColors.black),
                            ),
                            Text(
                              bestForYou[index].price,
                              style: AppTextStyle.textStyleSmall(
                                  width, AppColors.blue),
                            ),
                            Row(children: [
                              Row(
                                children: [
                                  AppIcons.bed(color: AppColors.greyDark),
                                  Text(
                                    "${bestForYou[index].bedrooms} Bedrooms",
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  AppIcons.bathroom(color: AppColors.greyDark),
                                  Text(
                                    "${bestForYou[index].bathrooms} Bathrooms",
                                    style: AppTextStyle.textStyleSmall(
                                      width,
                                      AppColors.greyDark,
                                    ),
                                  )
                                ],
                              ),
                            ])
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
