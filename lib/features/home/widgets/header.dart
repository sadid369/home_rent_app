import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_text_style.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: AppTextStyle.textStyleSmall(width, AppColors.grey),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Jakarta',
                    style: AppTextStyle.textStyleMedium(width, Colors.black),
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
    );
  }
}
