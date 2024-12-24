import 'package:flutter/material.dart';
import 'package:home_rent/features/home/widgets/custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';

class SubHeader extends StatelessWidget {
  final String title;
  final String seeMore;
  const SubHeader({
    super.key,
    required this.title,
    required this.seeMore,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: height * 0.018,
        left: width * 0.05,
        right: width * 0.05,
      ), // 24px
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.textStyleMedium(width, AppColors.black),
          ),
          CustomButton(
            width: width * 0.2,
            height: height * 0.0419,
            content: Text(
              seeMore,
              style: AppTextStyle.textStyleSmall(width, AppColors.greyDark),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
