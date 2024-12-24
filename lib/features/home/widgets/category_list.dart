import 'package:flutter/material.dart';
import 'package:home_rent/features/home/widgets/custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';
import '../../../helper/enum_category.dart';

Category selectedCategory = Category.house;
Container CategoryList(
    double height, double width, Function(Function()) setState) {
  return Container(
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
                : AppTextStyle.textStyleSmall(width, AppColors.greyDark),
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
                ? AppTextStyle.textStyleSmall(width, AppColors.white)
                : AppTextStyle.textStyleSmall(width, AppColors.greyDark),
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
                ? AppTextStyle.textStyleSmall(width, AppColors.white)
                : AppTextStyle.textStyleSmall(width, AppColors.greyDark),
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
                : AppTextStyle.textStyleSmall(width, AppColors.greyDark),
          ),
          onTap: () {
            setState(() {
              selectedCategory = Category.villa;
            });
          },
        ),
      ],
    ),
  );
}
