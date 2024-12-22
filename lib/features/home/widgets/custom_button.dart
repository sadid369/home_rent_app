// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;

  final Widget content;

  final Color? bg1;
  final Color? bg2;
  final double radius;
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.content,
    this.bg1,
    this.bg2,
    this.radius = 0,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            radius,
          ),
          color: bg2 == null ? bg1 : null,
          gradient: bg2 == null
              ? null
              : LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    bg2!,
                    bg1!,
                  ],
                  // stops: const [0.5, 1],
                ),
        ),
        width: width,
        height: height,
        child: Center(
          child: content,
        ),
      ),
    );
  }
}
