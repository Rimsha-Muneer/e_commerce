import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
class CirclularContainer extends StatelessWidget {
  const CirclularContainer({
    this.child,
    this.height=400,
    this.width=400,
    this.radius=400,
    this.backgroundColor=AppConstantColors.white,
    this.padding=0,
    super.key,
  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
            height: height,
            padding:  EdgeInsets.all(padding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                color: backgroundColor),
                child: child,
    );
  }
}