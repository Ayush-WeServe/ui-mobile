import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/controllers/homework_status_controller.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class HWButton extends StatelessWidget {
  const HWButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeworkStatusController.instance;

    return SizedBox(
      height: AppSizes.buttonXS,
      child: Container(
        width: AppSizes.buttonLG,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.radiusMD),
            color: AppColors.lightScaffold),
        child: Center(
          child: Obx(
            () => TextsWidget(
              text: controller.status.value,
              style: TextStyle(
                  fontSize: AppSizes.fontsLabelSmall, color: AppColors.dark),
            ),
          ),
        ),
      ),
    );
  }
}
