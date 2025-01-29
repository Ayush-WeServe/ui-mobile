import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/ui/widgets/box_heading_container.dart';
import 'package:ui_mobile/ui/widgets/task_list.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/routes.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';
import '../widgets/icon_button_container.dart';
import '../widgets/lessons_widget.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String subject = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          title: TextsWidget(
            text: subject,
            // 'heell',
            style: AppStyles.bodyLarge,
          ),
          leading: Padding(
            padding: const EdgeInsets.all(AppSizes.paddingXS),
            child: IconButtonContainer(
              icon: Icons.keyboard_arrow_left,
              onTap: () {
                Get.toNamed(AppRouteNames.nav);
              },
              border: true,
            ),
          ),
          backgroundColor: AppColors.lightScaffold,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.paddingMD, vertical: AppSizes.paddingMD),
            child: Column(
              children: [
                BoxHeadingContainer(topic: AppStrings.lessonTutorial),
                LessonsWidget(),
                TaskList(),
              ],
            ),
          ),
        ));
  }
}
