import 'package:e_commerce_app/common/widgets/customshapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/customshapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/customshapes/curvedshapes/curvededgeswidget.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenHeaderWidget(child: Container(),),
          ],
        ),
      ),
    );
  }
}

