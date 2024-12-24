import 'package:flutter/material.dart';
import 'package:home_rent/features/home/widgets/custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_text_style.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({
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
                hintStyle: AppTextStyle.textStyleSmall(width, Colors.grey),
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
    );
  }
}
