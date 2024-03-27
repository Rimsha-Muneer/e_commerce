import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/productCart/cart_counter.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Good Day For Shopping',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: AppConstantColors.grey)),
          Text('Hi',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: AppConstantColors.white)),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: (){
    
          }, iconColor: AppConstantColors.white,
        ),
      ],
    );
  }
}

