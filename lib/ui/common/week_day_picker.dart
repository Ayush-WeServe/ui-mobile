import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/controllers/week_controller.dart';
import 'package:ui_mobile/ui/widgets/box_heading_container.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class WeekDaysContainer extends StatelessWidget {
  const WeekDaysContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final WeekController controller = Get.put(WeekController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.paddingLG),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.radiusMD),
            color: AppColors.weekContainerBackground),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.paddingMD),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoxHeadingContainer(topic: AppStrings.thisWeek),
              WeeklyDatePicker(
                backgroundColor: AppColors.inputFieldColor,
                weekdayText: controller.selectedDay.toString(),
                enableWeeknumberText: false,
                selectedDay: DateTime.now(),
                changeDay: (DateTime) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
