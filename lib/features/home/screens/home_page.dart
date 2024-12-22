import 'package:flutter/material.dart';
import 'package:home_rent/constants/app_text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // row in which left side  location with name with drop down widget and right side a notification icon with a badge
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: width * 0.09,
                    ),
                    Text(
                      'Location',
                      style: AppTextStyle.textStyleSmall(width, Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          'Jakarta',
                          style:
                              AppTextStyle.textStyleMedium(width, Colors.black),
                        ),
                        Text(
                          'Jakarta',
                          style:
                              AppTextStyle.textStyleLarge(width, Colors.black),
                        ),
                        Icon(Icons.bed),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
