import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_text_style.dart';
import '../../../constants/fake_api_data.dart';

class ItemSlider extends StatelessWidget {
  const ItemSlider({
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
      margin: EdgeInsets.only(right: width * 0.0640),
      width: width * 0.5920, //222px
      height: height * 0.3350,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(housesNearby[index].image),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: width * 0.1947, //73px
                height: height * 0.0296, //24px
                margin: EdgeInsets.only(
                    top: height * 0.0246, right: width * 0.0427),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.black.withOpacity(0.24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppIcons.location(
                      width: width * 0.0267, //10px
                      height: height * 0.0148, //12px
                      color: AppColors.white,
                    ),
                    Text(
                      housesNearby[index].distance,
                      style: AppTextStyle.textStyleSmall(
                        width,
                        AppColors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: width * 0.0533,
              bottom: height * 0.0197,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${housesNearby[index].name}',
                  style: AppTextStyle.textStyleMedium(
                    width,
                    AppColors.white,
                  ),
                ),
                Text(
                  housesNearby[index].address,
                  style: AppTextStyle.textStyleSmall(
                    width,
                    AppColors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
