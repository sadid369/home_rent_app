import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_text_style.dart';
import '../../../constants/fake_api_data.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.width,
    required this.height,
    required this.index,
  });

  final double width;
  final double height;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.8133,
      height: height * 0.0862,
      margin: EdgeInsets.only(bottom: height * 0.0296),
      child: Row(
        children: [
          Container(
            width: width * 0.1973,
            height: height * 0.0862,
            // margin: EdgeInsets.only(right: width * 0.0427),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(bestForYou[index].image),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(width: width * 0.04),
          SizedBox(
            height: height * 0.0862,
            width: width * 0.55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  bestForYou[index].name,
                  style: AppTextStyle.textStyleMedium(width, AppColors.black),
                ),
                Text(
                  bestForYou[index].price,
                  style: AppTextStyle.textStyleSmall(width, AppColors.blue),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppIcons.bed(color: AppColors.greyDark),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "${bestForYou[index].bedrooms} Bedrooms",
                          style: AppTextStyle.textStyleSmall(
                            width,
                            AppColors.greyDark,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        AppIcons.bathroom(color: AppColors.greyDark),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "${bestForYou[index].bathrooms} Bathrooms",
                          style: AppTextStyle.textStyleSmall(
                            width,
                            AppColors.greyDark,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
