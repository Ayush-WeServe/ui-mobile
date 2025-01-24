import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/images.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.paddingMD),
        child: Column(
          spacing: AppSizes.paddingMD,
          children: [
            Expanded(
              flex: 6,
              child: Center(child: Image.asset(AppImages.splash)),
            ),
            Expanded(
              child: Flexible(
                child: Text(
                  AppStrings.headLine,
                  style: AppStyles.headlineSmall,
                ),
              ),
            ),
            Expanded(
              child: Flexible(
                child: Text(
                  AppStrings.subTitle,
                  style: AppStyles.labelMedium,
                ),
              ),
            ),
            SizedBox(
                height: AppSizes.buttonSM,
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.dark),
                    onPressed: () {
                      Get.toNamed(AppRouteNames.tab);
                    },
                    child: Text(
                      AppStrings.letsStart,
                      style: TextStyle(
                          fontSize: AppSizes.fontsBodySmall,
                          color: AppColors.lightScaffold),
                    )))
          ],
        ),
      ),
    );
  }
}
