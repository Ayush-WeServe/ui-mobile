import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_stack/image_stack.dart';
import 'package:ui_mobile/ui/widgets/custom_elevated_button.dart';
import 'package:ui_mobile/utils/constants/images.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/routes.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';
import '../widgets/icon_button_container.dart';

class SubjectsDetailScreen extends StatelessWidget {
  const SubjectsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List subject = Get.arguments;
    List<String> images = [
      AppImages.user1,
      AppImages.user2,
      AppImages.user3,
      AppImages.user4,
      AppImages.jane
    ];
    return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextsWidget(
                text: subject[0],
                style: AppStyles.bodyMedium,
              ),
              TextsWidget(
                text: AppStrings.willStart,
                style: AppStyles.labelMedium,
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.all(AppSizes.paddingXS),
            child: IconButtonContainer(
              icon: Icons.keyboard_arrow_left,
              onTap: () {
                Get.toNamed(AppRouteNames.nav);
              },
              border: true,
            ),
          ),
          backgroundColor: AppColors.lightScaffold,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.paddingMD, vertical: AppSizes.paddingMD),
              child: Column(
                spacing: AppSizes.spacingSM,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextsWidget(
                    text: AppStrings.student,
                    style: AppStyles.bodyLarge,
                  ),
                  ImageStack(
                    imageList: images,
                    totalCount: images.length,
                    imageRadius: AppSizes.imageXS,
                    imageCount: 3,
                    imageBorderWidth: 1,
                  ),
                  TextsWidget(text: AppStrings.lessonTheme),
                  TextsWidget(text: AppStrings.review),
                  TextsWidget(
                    text: AppStrings.additionalMaterial,
                    style: AppStyles.bodyLarge,
                  ),
                  Row(
                    spacing: AppSizes.spacingSM,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppSizes.radiusMD),
                        child: Image.asset(
                          AppImages.engBook,
                          height: AppSizes.imageLG,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppSizes.radiusMD),
                        child: Image.asset(
                          AppImages.advanceEngBook,
                          height: AppSizes.imageLG,
                        ),
                      ),
                    ],
                  ),
                  TextsWidget(
                    text: AppStrings.homework,
                    style: AppStyles.bodyLarge,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSizes.radiusLG),
                        color: AppColors.inputFieldColor),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.paddingSM,
                          vertical: AppSizes.paddingSM),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: AppSizes.paddingSM,
                        children: [
                          TextsWidget(
                            text: AppStrings.attached,
                            style: AppStyles.labelLarge,
                          ),
                          Icon(Icons.check_circle_rounded)
                        ],
                      ),
                    ),
                  ),
                  Center(
                      child: CustomElevatedButton(
                    text: AppStrings.joinClass,
                    route: AppRouteNames.lectureScreen,
                    arg: subject,
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}
