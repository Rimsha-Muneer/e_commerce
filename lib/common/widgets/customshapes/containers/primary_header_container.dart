import 'package:e_commerce_app/common/widgets/customshapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/customshapes/curvedshapes/curvededgeswidget.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreenHeaderWidget extends StatelessWidget {
  const HomeScreenHeaderWidget({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: AppConstantColors.primaryColor,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CirclularContainer(
                      backgroundColor:
                          AppConstantColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CirclularContainer(
                      backgroundColor:
                          AppConstantColors.textWhite.withOpacity(0.1))),
            ],
          ),
        ),
      ),
    );
  }
}
