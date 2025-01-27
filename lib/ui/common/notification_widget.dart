import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/custom_elevated_button.dart';
import 'package:ui_mobile/ui/widgets/icon_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/images.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

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
                    child: IconContainer(
                      icon: icon,
                      onTap: () {},
                      border: false,
                    )),
                Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subject,
                          style: AppStyles.labelLarge,
                        ),
                        Text(
                          message,
                          style: AppStyles.labelMedium,
                        )
                      ],
                    ))
              ],
            ),
          )),
      onTap: () {
        showModalBottomSheet(
            context: context,
            elevation: 0,
            backgroundColor: backColor,
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(AppSizes.radiusLG),
            ),
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.paddingMD,
                        vertical: AppSizes.paddingMD),
                    child: Column(
                      spacing: AppSizes.spacingLG,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconContainer(icon: icon, onTap: () {}),
                        Text(
                          message,
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
                                Text(
                                  subject,
                                  style: AppStyles.bodyLarge,
                                ),
                                Text(
                                  'Today, 1:15pm',
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
                                    Text('Eleanor Pena')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: CustomElevatedButton(
                              text: 'Lessons Material', route: ''),
                        )
                      ],
                    ),
                  ),
                ),
              );
            });
      },
    );
  }
}
