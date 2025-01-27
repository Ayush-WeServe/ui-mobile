import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String route;
  final List arg;

  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.route,
      this.arg = const []});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSizes.buttonSM,
        // width: 280,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.dark),
            onPressed: () {
              Get.toNamed(route, arguments: arg);
            },
            child: Text(
              text,
              style: TextStyle(
                  fontSize: AppSizes.fontsBodySmall,
                  color: AppColors.lightScaffold),
            )));
  }
}
