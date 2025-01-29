import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';

class TaskContainer extends StatelessWidget {
  final String task;
  final String time;
  final String status;
  const TaskContainer(
      {super.key,
      required this.task,
      required this.time,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.radiusMD),
          color: AppColors.inputFieldColor),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.paddingLG, vertical: AppSizes.paddingLG),
        child: Row(
          spacing: AppSizes.spacingSM,
          children: [
            TextsWidget(
              text: task,
              style: AppStyles.bodyLarge,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: AppSizes.spacingMD,
                children: [
                  Row(
                    spacing: AppSizes.spacingXS,
                    children: [
                      Icon(
                        Icons.watch_later_rounded,
                        color: AppColors.dark,
                        size: AppSizes.iconXS,
                      ),
                      TextsWidget(
                        text: time,
                        style: AppStyles.labelSmall,
                      )
                    ],
                  ),
                  TextsWidget(
                    text: status,
                    style: AppStyles.labelLarge,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
