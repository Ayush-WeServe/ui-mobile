import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String route;

  const CustomElevatedButton(
      {super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSizes.buttonMD,
        width: 280,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.dark),
            onPressed: () {
              Get.toNamed(route);
            },
            child: Text(
              text,
              style: TextStyle(
                  fontSize: AppSizes.fontsBodySmall,
                  color: AppColors.lightScaffold),
            )));
  }
}
