import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../home/widgets/custom_button.dart';
import '../screens/item_detail.dart';

class Owner extends StatelessWidget {
  const Owner({
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
      width: width * 0.8827,
      height: height * 0.0493,
      margin: EdgeInsets.only(
        top: height * 0.02,
        left: width * 0.0533,
        right: width * 0.0533,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: width * 0.1067,
                  height: height * 0.0493,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.network(
                      widget.house.ownerImage,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                            child: CircularProgressIndicator(
                          color: AppColors.blue,
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ));
                      },
                    ),
                  )),
              SizedBox(
                width: width * 0.04,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.house.ownerName),
                  const Text('Owner'),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                width: width * 0.0747,
                height: height * 0.0345,
                bg1: AppColors.blue.withOpacity(0.5),
                radius: 5,
                content: AppIcons.phone(
                  width: width * 0.0320,
                  height: height * 0.0148,
                  color: AppColors.white,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: width * 0.0427,
              ),
              CustomButton(
                width: width * 0.0747,
                height: height * 0.0345,
                bg1: AppColors.blue.withOpacity(0.5),
                radius: 5,
                content: AppIcons.chat(
                  width: width * 0.0320,
                  height: height * 0.0148,
                  color: AppColors.white,
                ),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
