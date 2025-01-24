import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/icon_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

class NextClassContainer extends StatelessWidget {
  final String subject;
  final String dateTime;
  final String professor;
  final String profileImage;

  const NextClassContainer(
      {super.key,
      required this.subject,
      required this.dateTime,
      required this.professor,
      required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // B O x
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radiusMD),
              color: AppColors.lightBlue),
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
                    // C A L C U L A T O R    C O N T A I N E R
                    IconContainer(
                      icon: Icons.calculate,
                      onTap: () {},
                      color: true,
                      backcolor: AppColors.lightBlueBackground,
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
                              Text(
                                'Homework',
                              ),
                              Icon(Icons.check_circle_rounded)
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
                    Text(
                      subject,
                      style: AppStyles.bodyLarge,
                    ),
                    Text(
                      dateTime,
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
                        borderRadius: BorderRadius.circular(AppSizes.radiusSM),
                        child: Image.asset(
                          profileImage,
                          height: AppSizes.imageXS,
                          width: AppSizes.imageXS,
                        ),
                      ),
                      Text(
                        professor,
                        style: AppStyles.bodySmall,
                      )
                    ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
