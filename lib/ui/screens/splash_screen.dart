import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/custom_elevated_button.dart';
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
              child: Text(
                AppStrings.headLine,
                style: AppStyles.heading,
              ),
            ),
            Expanded(
              child: Text(
                AppStrings.subTitle,
                style: AppStyles.smallHeading,
              ),
            ),
            CustomElevatedButton(
                text: AppStrings.letsStart, route: AppRouteNames.nav),
          ],
        ),
      ),
    );
  }
}
