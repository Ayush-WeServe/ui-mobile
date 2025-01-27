import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/box_heading_container.dart';
import 'package:ui_mobile/ui/widgets/days_list_widget.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class WeekDaysContainer extends StatelessWidget {
  const WeekDaysContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.paddingLG),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radiusMD),
              color: AppColors.weekContainerBackground),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.paddingMD),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              BoxHeadingContainer(topic: 'This Week'),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.paddingMD,
                    vertical: AppSizes.paddingMD),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DaysListWidget(day: 'SUN', date: '04'),
                    DaysListWidget(day: 'MON', date: '05'),
                    DaysListWidget(day: 'TUE', date: '06'),
                    DaysListWidget(day: 'WED', date: '07'),
                    DaysListWidget(day: 'THE', date: '08'),
                    DaysListWidget(
                      day: 'FRI',
                      date: '09',
                      currentDay: true,
                    ),
                    DaysListWidget(day: 'SAT', date: '10'),
                  ],
                ),
              )
            ]),
          )),
    );
  }
}
