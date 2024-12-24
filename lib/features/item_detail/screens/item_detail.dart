// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:home_rent/features/home/widgets/custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';
import '../../home/domain/models/house.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

import '../widgets/description.dart';
import '../widgets/gallery.dart';
import '../widgets/main_image.dart';
import '../widgets/owner.dart';
import '../widgets/rent_now.dart';

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
            MainImage(width: width, height: height, widget: widget),
            // description
            Description(height: height, width: width, widget: widget),
            //owner details
            Owner(width: width, height: height, widget: widget),
            // Gallery
            Gallery(height: height, width: width, widget: widget),
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
            RentNow(width: width, height: height, widget: widget),
          ],
        ),
      ),
    ));
  }
}
