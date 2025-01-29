import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/ui/widgets/homework_container_button.dart';
import 'package:ui_mobile/ui/widgets/icon_container.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/themes/texts.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';

class HomeworkContainer extends StatelessWidget {
  final String subject;
  final IconData icon;
  final String time;
  final Color color;

  const HomeworkContainer(
      {super.key,
      required this.subject,
      required this.icon,
      required this.time,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.radiusMD),
            color: color),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.paddingMD, vertical: AppSizes.paddingMD),
          child: Row(
            spacing: AppSizes.spacingSM,
            children: [
              IconContainer(icon: icon),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: AppSizes.spacingMD,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextsWidget(
                          text: subject,
                          style: AppStyles.labelMedium,
                        ),
                        TextsWidget(
                          text: time,
                          style: AppStyles.labelSmall,
                        )
                      ],
                    ),
                    HWButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Get.toNamed(AppRouteNames.tutorialScreen, arguments: subject);
      },
    );
  }
}
