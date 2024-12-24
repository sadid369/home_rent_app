import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';
import '../../home/widgets/custom_button.dart';
import '../screens/item_detail.dart';

class RentNow extends StatelessWidget {
  const RentNow({
    super.key,
    required this.width,
    required this.height,
    required this.widget,
  });

  final double width;
  final double height;
  final ItemDetail widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.only(
        top: height * 0.02,
        left: width * 0.0533,
        right: width * 0.0533,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: AppTextStyle.textStyleMedium(
                  width,
                  AppColors.grey,
                ),
              ),
              SizedBox(
                height: width * 0.01,
              ),
              Text(
                "${widget.house.price}",
                style: AppTextStyle.textStyleSmall(
                  width,
                  AppColors.black,
                ),
              )
            ],
          ),
          CustomButton(
            width: width * 0.3253,
            height: height * 0.0530,
            bg1: AppColors.blueLight,
            bg2: AppColors.blue,
            radius: 10,
            content: Text(
              'Rent Now',
              style: AppTextStyle.textStyleMedium(width, AppColors.white),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
