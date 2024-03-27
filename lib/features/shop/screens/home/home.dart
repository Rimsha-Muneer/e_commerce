import 'package:e_commerce_app/common/widgets/Text/section_heading.dart';
import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/appbar/home_appbar_Widget.dart';
import 'package:e_commerce_app/common/widgets/customshapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/customshapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/customshapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/customshapes/curvedshapes/curvededgeswidget.dart';
import 'package:e_commerce_app/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:e_commerce_app/common/widgets/productCart/cart_counter.dart';
import 'package:e_commerce_app/features/shop/screens/home/homecategories.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHomeAppBar(),
                  SizedBox(height: 30.0),
                  HomeSearchContainer(
                    text: 'Search in Store',
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 20.0),
                      child: Column(
                        children: [
                          AllSectionHeadings(
                            title: 'Popular Categories',
                            textColor: Colors.white,
                            showActionButton: false,
                          ),
                          const SizedBox(height: TSizes.spaceBtwItems),
                          HomeCategories()
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

