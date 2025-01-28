import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String route;
  final List arg;
  final IconData? icon;

  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.route,
      this.arg = const [],
      this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSizes.buttonSM,
        width: AppSizes.imageLG,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.dark),
            onPressed: () {
              Get.toNamed(route, arguments: arg);
            },
            child: Row(
              spacing: AppSizes.spacingXS,
              children: [
                Visibility(
                  visible: icon != null,
                  child: Icon(
                    icon,
                    color: AppColors.lightScaffold,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: AppSizes.fontsBodySmall,
                      color: AppColors.lightScaffold),
                ),
              ],
            )));
  }
}
