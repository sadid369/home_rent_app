import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';
import '../screens/item_detail.dart';

class Gallery extends StatelessWidget {
  const Gallery({
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gallery",
                style: AppTextStyle.textStyleMedium(
                  width,
                  AppColors.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                width: width * 0.88,
                height: height * 0.1,
                child: GalleryImage(
                  loadingWidget: CircularProgressIndicator(
                    color: AppColors.blue,
                  ),
                  imageUrls: widget.house.gallery,
                  numOfShowImages: 4,
                  crossAxisCount: 4,
                  crossAxisSpacing: 17,
                  textStyleOfNumberWidget:
                      AppTextStyle.textStyleLarge(width, AppColors.white),
                  colorOfNumberWidget: AppColors.black.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
