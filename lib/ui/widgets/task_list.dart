import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/custom_elevated_button.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

import 'task_container.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.paddingXS, vertical: AppSizes.paddingXS),
      child: Column(
        spacing: AppSizes.spacingXS,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextsWidget(
                text: AppStrings.tasks,
                style: AppStyles.bodyLarge,
              ),
              TextsWidget(
                text: AppStrings.doneTask,
                style: AppStyles.bodySmall,
              )
            ],
          ),
          Column(
            spacing: AppSizes.spacingXS,
            children: [
              TaskContainer(
                task: AppStrings.task1,
                time: AppStrings.hwtime1,
                status: AppStrings.uploaded,
              ),
              TaskContainer(
                task: AppStrings.task2,
                time: AppStrings.hwtime2,
                status: AppStrings.todo,
              ),
              TaskContainer(
                task: AppStrings.task3,
                time: AppStrings.hwtime3,
                status: AppStrings.todo,
              ),
            ],
          ),
          CustomElevatedButton(
            text: AppStrings.chat,
            route: AppRouteNames.nav,
            icon: Icons.chat_outlined,
          )
        ],
      ),
    );
  }
}
