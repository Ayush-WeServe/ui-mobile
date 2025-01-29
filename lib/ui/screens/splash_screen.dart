import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/custom_elevated_button.dart';
import 'package:ui_mobile/utils/constants/images.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.paddingSM),
          child: Column(
            spacing: AppSizes.paddingMD,
            children: [
              Expanded(
                flex: 5,
                child: Center(child: Image.asset(AppImages.splash)),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  spacing: AppSizes.spacingSM,
                  children: [
                    TextsWidget(
                      text: AppStrings.headLine,
                      style: AppStyles.heading,
                      textAlignCenter: TextAlign.center,
                    ),
                    TextsWidget(
                        text: AppStrings.headLine,
                        style: AppStyles.smallHeading),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: AppSizes.paddingXL),
                child: CustomElevatedButton(
                    text: AppStrings.letsStart, route: AppRouteNames.nav),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
