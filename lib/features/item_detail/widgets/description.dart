import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';
import '../screens/item_detail.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.height,
    required this.width,
    required this.widget,
  });

  final double height;
  final double width;
  final ItemDetail widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: height * 0.02,
        left: width * 0.0533,
        right: width * 0.0533,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: AppTextStyle.textStyleMedium(
              width,
              AppColors.black,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ReadMoreText(
            trimMode: TrimMode.Line,
            trimLines: 2,
            colorClickableText: Colors.pink,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: AppTextStyle.textStyleSmall(
              width,
              AppColors.blue,
            ),
            lessStyle: AppTextStyle.textStyleSmall(
              width,
              AppColors.blue,
            ),
            widget.house.description,
            style: AppTextStyle.textStyleSmall(
              width,
              AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
