// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:home_rent/features/home/widgets/custom_button.dart';
import 'package:readmore/readmore.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_text_style.dart';
import '../../home/domain/models/house.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

class ItemDetail extends StatefulWidget {
  final House house;
  const ItemDetail({super.key, required this.house});

  @override
  ItemDetailState createState() => ItemDetailState();
}

class ItemDetailState extends State<ItemDetail> {
  GoogleMapController? _controller;
  final Set<Marker> _markers = {};
  void onMapCreated(GoogleMapController controller) {
    _controller = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: const MarkerId('1'),
          position: LatLng(widget.house.latitude, widget.house.longitude),
          infoWindow: InfoWindow(
            title: widget.house.name,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
            ),
            // description
            Container(
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
            ),
            //owner details
            Container(
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
                          // decoration: BoxDecoration(
                          //   color: AppColors.greyExtraLight3,
                          //   image: DecorationImage(
                          //     image: AssetImage(
                          //       widget.house.ownerImage,
                          //     ),
                          //     fit: BoxFit.contain,
                          //   ),
                          //   borderRadius: BorderRadius.circular(
                          //       50), //border radius of 50% of shortest side
                          // ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.network(
                              widget.house.ownerImage,
                              fit: BoxFit.cover,
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                    child: CircularProgressIndicator(
                                  color: AppColors.blue,
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
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
            ),
            // Gallery
            Container(
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
                          textStyleOfNumberWidget: AppTextStyle.textStyleLarge(
                              width, AppColors.white),
                          colorOfNumberWidget: AppColors.black.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: width * 0.88,
              height: height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GoogleMap(
                  zoomControlsEnabled: false,
                  onMapCreated: onMapCreated,
                  markers: _markers,
                  initialCameraPosition: CameraPosition(
                    target:
                        LatLng(widget.house.latitude, widget.house.longitude),
                    zoom: 10,
                  ),
                ),
              ),
            ),
            Container(
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
                      style:
                          AppTextStyle.textStyleMedium(width, AppColors.white),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
