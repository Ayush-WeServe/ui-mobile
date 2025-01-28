import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/common/time_table.dart';
import 'package:ui_mobile/ui/common/week_days_container.dart';
import 'package:ui_mobile/ui/widgets/icon_button_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

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
                  Text(
                    'Schedule',
                    style: AppStyles.headlineMedium,
                  ),
                  IconButtonContainer(icon: Icons.search_outlined, onTap: () {})
                ],
              ),
              WeekDaysContainer(),
              TimeTable(
                time: '8:00am',
                subjectTime: ['Basic Mathematics', '08:00am - 8:45am'],
                backColor: AppColors.lightBlue,
                align: Alignment.centerLeft,
              ),
              TimeTable(
                time: '9:00am',
                breakTime: true,
              ),
              TimeTable(
                  time: '10:00am',
                  subjectTime: ['English Grammer', '10:00am - 11:10am'],
                  backColor: AppColors.lightGreen,
                  align: Alignment.centerRight),
              TimeTable(
                time: '11:00am',
                breakTime: true,
              ),
              TimeTable(
                time: '12:00am',
                subjectTime: ['Science', '12:00am - 12:45am'],
                backColor: AppColors.lightYellow,
              ),
              TimeTable(
                  time: '01:00am',
                  subjectTime: ['World History', '01:00am - 1:50am'],
                  backColor: AppColors.lightPink,
                  align: Alignment.centerRight),
            ],
          ),
        )),
      ),
    );
  }
}
