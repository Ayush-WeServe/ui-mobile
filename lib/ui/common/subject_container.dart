import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/icon_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

class SubjectContainer extends StatelessWidget {
  final IconData icon;
  final String subject;
  final String dateTime;
  final String professor;
  final String profileImage;
  final bool homeWorkStatus;
  final Color containerColor;

  const SubjectContainer(
      {super.key,
      required this.subject,
      required this.dateTime,
      required this.professor,
      required this.profileImage,
      required this.icon,
      this.homeWorkStatus = false,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // B O x
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radiusMD),
              color: containerColor),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSizes.paddingMD),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppSizes.spacingMD,
                  children: [
                    // I C O N    C O N T A I N E R
                    IconContainer(
                      icon: icon,
                      color: true,
                      backcolor: AppColors.lightScaffold,
                    ),

                    //  H O M E W O R K    T  I K
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppSizes.radiusLG),
                            color: AppColors.lightBlueBackground),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSizes.paddingXS,
                              vertical: AppSizes.paddingXS),
                          child: Row(
                            spacing: AppSizes.paddingSM,
                            children: [
                              TextsWidget(text: AppStrings.homework),
                              Icon(homeWorkStatus
                                  ? Icons.check_circle_rounded
                                  : Icons.remove_circle_rounded)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.paddingMD,
                    vertical: AppSizes.paddingXS),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextsWidget(
                      text: subject,
                      style: AppStyles.bodyLarge,
                    ),
                    TextsWidget(
                      text: dateTime,
                      style: AppStyles.labelSmall,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(AppSizes.paddingMD),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: AppSizes.spacingXS,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppSizes.radiusMD),
                        child: Image.asset(
                          profileImage,
                          height: AppSizes.imageXS,
                          width: AppSizes.imageXS,
                        ),
                      ),
                      TextsWidget(
                        text: professor,
                        style: AppStyles.bodySmall,
                      ),
                    ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
