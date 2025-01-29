import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

import '../../utils/constants/styles.dart';

class DaysListWidget extends StatelessWidget {
  final String day;
  final String date;
  final bool currentDay;

  const DaysListWidget(
      {super.key,
      required this.day,
      required this.date,
      this.currentDay = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 7,
        children: [
          TextsWidget(text: day, style: AppStyles.labelSmall),
          Container(
            decoration: currentDay
                ? BoxDecoration(
                    color: AppColors.dark,
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(AppSizes.radiusSM),
                  )
                : null,
            child: TextsWidget(
              text: date,
              style: currentDay ? AppStyles.selectedDate : AppStyles.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
