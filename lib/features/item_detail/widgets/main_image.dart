import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_text_style.dart';
import '../screens/item_detail.dart';

class MainImage extends StatelessWidget {
  const MainImage({
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
      margin: EdgeInsets.only(
        right: width * 0.0533,
        left: width * 0.0533,
        top: height * 0.02,
      ),
      width: width * 0.8933, //222px
      height: height * 0.3744,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(widget.house.image),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  width: width * 0.0907, //34px
                  height: height * 0.0419, //34px
                  margin: EdgeInsets.only(
                      top: height * 0.0246, left: width * 0.0533),
                  decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.24),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppIcons.arrowBack(
                        width: width * 0.0267, //10px
                        height: height * 0.0148, //12px
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width * 0.0907, //34px
                height: height * 0.0419, //34px
                margin: EdgeInsets.only(
                    top: height * 0.0246, right: width * 0.0533),
                decoration: BoxDecoration(
                  color: AppColors.black.withOpacity(0.24),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppIcons.save(
                      width: width * 0.0267, //10px
                      height: height * 0.0148, //12px
                      color: AppColors.white,
                    ),
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
                  widget.house.name,
                  style: AppTextStyle.textStyleMedium(
                    width,
                    AppColors.white,
                  ),
                ),
                Text(
                  widget.house.address,
                  style: AppTextStyle.textStyleSmall(
                    width,
                    AppColors.white,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width * 0.0747, //24px
                          height: height * 0.0345, //24px
                          decoration: BoxDecoration(
                            color: AppColors.white.withOpacity(0.20),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppIcons.bed(
                                color: AppColors.white,
                                width: width * 0.0427,
                                height: height * 0.0158,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "${widget.house.bedrooms} Bedrooms",
                          style: AppTextStyle.textStyleSmall(
                            width,
                            AppColors.greyLight,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: width * 0.0853,
                    ),
                    Row(
                      children: [
                        Container(
                            width: width * 0.0747, //24px
                            height: height * 0.0345, //24px
                            decoration: BoxDecoration(
                              color: AppColors.white.withOpacity(0.20),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppIcons.bathroom(
                                  color: AppColors.white,
                                  width: width * 0.0427,
                                  height: height * 0.0158,
                                ),
                              ],
                            )),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "${widget.house.bathrooms} Bathrooms",
                          style: AppTextStyle.textStyleSmall(
                            width,
                            AppColors.greyLight,
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
