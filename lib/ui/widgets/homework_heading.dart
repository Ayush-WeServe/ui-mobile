import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';
import 'icon_container.dart';

class HomeworkHeading extends StatelessWidget {
  const HomeworkHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          spacing: AppSizes.spacingSM,
          children: [
            TextsWidget(
              text: AppStrings.date1,
              style: AppStyles.labelLarge,
            ),
            TextsWidget(
              text: AppStrings.taskList,
              style: AppStyles.labelSmall,
            ),
          ],
        ),
        IconContainer(
          icon: Icons.calendar_month_outlined,
          border: false,
        ),
      ],
    );
  }
}
