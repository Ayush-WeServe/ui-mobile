import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/custom_elevated_button.dart';
import 'package:ui_mobile/ui/widgets/icon_button_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/images.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

import '../../utils/constants/sizes.dart';

class NotificationWidget extends StatelessWidget {
  final IconData icon;
  final String subject;
  final String message;
  final Color backColor;

  const NotificationWidget(
      {super.key,
      required this.icon,
      required this.subject,
      required this.message,
      required this.backColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radiusMD),
              color: backColor),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.paddingMD),
            child: Row(
              spacing: AppSizes.spacingMD,
              children: [
                Expanded(
                    flex: 1,
                    child: IconButtonContainer(
                      icon: icon,
                      onTap: () {},
                      border: false,
                    )),
                Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextsWidget(
                          text: subject,
                          style: AppStyles.labelLarge,
                        ),
                        TextsWidget(
                            text: message, style: AppStyles.labelMedium),
                      ],
                    ))
              ],
            ),
          )),
      onTap: () {
        showModalBottomSheet(
            context: context,
            backgroundColor: backColor,
            builder: (BuildContext context) {
              return SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.paddingMD,
                      vertical: AppSizes.paddingMD),
                  child: Column(
                    spacing: AppSizes.spacingSM,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButtonContainer(icon: icon, onTap: () {}),
                      TextsWidget(
                        text: message,
                        style: AppStyles.bodyLarge,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius:
                                BorderRadius.circular(AppSizes.radiusMD),
                            color: AppColors.lightScaffold),
                        child: Padding(
                          padding: const EdgeInsets.all(AppSizes.paddingLG),
                          child: Column(
                            spacing: AppSizes.spacingXS,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextsWidget(
                                text: subject,
                                style: AppStyles.bodyLarge,
                              ),
                              TextsWidget(
                                text: AppStrings.time1,
                                style: AppStyles.bodyMedium,
                              ),
                              Row(
                                spacing: AppSizes.spacingSM,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        AppSizes.radiusMD),
                                    child: Image.asset(
                                      AppImages.jane,
                                      height: AppSizes.imageXS,
                                    ),
                                  ),
                                  TextsWidget(text: AppStrings.professor),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: CustomElevatedButton(
                            text: AppStrings.lessonMaterial, route: ''),
                      )
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
