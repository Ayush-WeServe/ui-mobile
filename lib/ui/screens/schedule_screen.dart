import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/common/time_table.dart';
import 'package:ui_mobile/ui/common/week_day_picker.dart';
import 'package:ui_mobile/ui/widgets/icon_button_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingMD),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextsWidget(
                      text: AppStrings.schedule,
                      style: AppStyles.headlineMedium),
                  IconButtonContainer(icon: Icons.search_outlined, onTap: () {})
                ],
              ),
              WeekDaysContainer(),
              TimeTable(
                time: AppStrings.time8,
                subjectTime: [AppStrings.basicMath, AppStrings.lectrureTime1],
                backColor: AppColors.lightBlue,
                align: Alignment.centerLeft,
              ),
              TimeTable(
                time: AppStrings.time9,
                breakTime: true,
              ),
              TimeTable(
                  time: AppStrings.time10,
                  subjectTime: [
                    AppStrings.englishGramer,
                    AppStrings.lectrureTime2
                  ],
                  backColor: AppColors.lightGreen,
                  align: Alignment.centerRight),
              TimeTable(
                time: AppStrings.time11,
                breakTime: true,
              ),
              TimeTable(
                time: AppStrings.time12,
                subjectTime: [AppStrings.science, AppStrings.lectrureTime3],
                backColor: AppColors.lightYellow,
              ),
              TimeTable(
                  time: AppStrings.time13,
                  subjectTime: [
                    AppStrings.wordHistory,
                    AppStrings.lectrureTime4
                  ],
                  backColor: AppColors.lightPink,
                  align: Alignment.centerRight),
            ],
          ),
        )),
      ),
    );
  }
}
