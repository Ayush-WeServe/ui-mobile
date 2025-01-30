import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/utils/themes/texts.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String? route;
  final List arg;
  final IconData? icon;
  final double width;

  const CustomElevatedButton(
      {super.key,
      required this.text,
      this.route,
      this.arg = const [],
      this.icon,
      this.width = AppSizes.imageXL});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSizes.buttonSM,
        width: width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.dark),
            onPressed: () {
              Get.toNamed(route!, arguments: arg);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: icon != null,
                  child: Padding(
                    padding: const EdgeInsets.only(right: AppSizes.spacingSM),
                    child: Icon(
                      icon,
                      color: AppColors.lightScaffold,
                    ),
                  ),
                ),
                TextsWidget(
                  text: text,
                  style: TextStyle(
                      fontSize: AppSizes.fontsBodySmall,
                      color: AppColors.lightScaffold),
                ),
              ],
            )));
  }
}
