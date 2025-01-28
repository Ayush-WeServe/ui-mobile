import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/custom_elevated_button.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

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
              Text(
                'Tasks',
                style: AppStyles.bodyLarge,
              ),
              Text(
                'Done 1/3',
                style: AppStyles.bodySmall,
              )
            ],
          ),
          Column(
            spacing: AppSizes.spacingXS,
            children: [
              TaskContainer(
                task: 'Task 1',
                time: '30 min',
                status: 'Uploaded',
              ),
              TaskContainer(
                task: 'Task 2',
                time: '60 min',
                status: 'To Do',
              ),
              TaskContainer(
                task: 'Task 3',
                time: '40 min',
                status: 'To Do',
              ),
            ],
          ),
          CustomElevatedButton(
            text: 'Chat',
            route: AppRouteNames.nav,
            icon: Icons.chat_outlined,
          )
        ],
      ),
    );
  }
}
