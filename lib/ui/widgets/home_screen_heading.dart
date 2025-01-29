import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/ui/widgets/icon_button_container.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/themes/texts.dart';
import '../../utils/constants/images.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/strings.dart';
import '../../utils/constants/styles.dart';

class HomeScreenHeading extends StatelessWidget {
  const HomeScreenHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: AppSizes.paddingMD,
      children: [
        Row(
          spacing: AppSizes.spacingSM,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radiusMD),
              child: Image.asset(
                AppImages.profile,
                height: 50,
                width: 50,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextsWidget(
                  text: AppStrings.ericaHawkins,
                  style: AppStyles.titleSmall,
                ),
                TextsWidget(
                  text: AppStrings.grade,
                  style: AppStyles.labelMedium,
                )
              ],
            ),
          ],
        ),
        IconButtonContainer(
            icon: Icons.notifications_active,
            onTap: () {
              Get.toNamed(AppRouteNames.notification);
            })
      ],
    );
  }
}
