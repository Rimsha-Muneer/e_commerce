import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
     this.textColor = AppConstantColors.white,
    this.backgroundColor = AppConstantColors.white,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (AppDeviceUtils.isDarkMode(context)? AppConstantColors.black: AppConstantColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color:(AppDeviceUtils.isDarkMode(context)? AppConstantColors.light: AppConstantColors.dark) ,
              )),
            ),
            const SizedBox(
              height: 10.0 / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
