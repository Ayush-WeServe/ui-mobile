import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/ui/widgets/icon_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

import '../common/notification_widget.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: AppStyles.bodyLarge,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingXS),
          child: IconContainer(
            icon: Icons.keyboard_arrow_left,
            onTap: () {
              Get.toNamed(AppRouteNames.tab);
            },
            border: true,
          ),
        ),
        backgroundColor: AppColors.lightScaffold,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.check_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.paddingMD, vertical: AppSizes.paddingSM),
          child: Column(
            spacing: AppSizes.paddingXS,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today'),
              SizedBox(
                height: AppSizes.spacingSM,
              ),
              NotificationWidget(
                icon: Icons.calculate,
                subject: AppStrings.basicMath,
                message: 'You got A+ today.',
                backColor: AppColors.lightBlueBackground,
              ),
              NotificationWidget(
                icon: Icons.book_sharp,
                subject: AppStrings.englishGramer,
                message: 'You have unfinished homework',
                backColor: AppColors.lightGreen,
              ),
              NotificationWidget(
                icon: Icons.wordpress_outlined,
                subject: AppStrings.wordHistory,
                message: 'Congrats! You got A+ today.',
                backColor: AppColors.lightPink,
              ),
              SizedBox(
                height: AppSizes.spacingSM,
              ),
              Text('Yesterday'),
              SizedBox(
                height: AppSizes.spacingSM,
              ),
              NotificationWidget(
                icon: Icons.science_outlined,
                subject: AppStrings.science,
                message: 'You got D+ today.',
                backColor: AppColors.lightYellow,
              ),
              NotificationWidget(
                icon: Icons.wordpress_outlined,
                subject: AppStrings.wordHistory,
                message: 'You have unfinished homework',
                backColor: AppColors.lightGreen,
              ),
              NotificationWidget(
                icon: Icons.calculate_outlined,
                subject: AppStrings.basicMath,
                message: 'You got A+ today.',
                backColor: AppColors.lightPink,
              ),
              SizedBox(
                height: AppSizes.spacingSM,
              ),
              Text('25-01-2025'),
              SizedBox(
                height: AppSizes.spacingSM,
              ),
              NotificationWidget(
                icon: Icons.calculate,
                subject: AppStrings.basicMath,
                message: 'You got B+ today.',
                backColor: AppColors.lightBlueBackground,
              ),
              NotificationWidget(
                icon: Icons.book_sharp,
                subject: AppStrings.englishGramer,
                message: 'You have unfinished homework',
                backColor: AppColors.lightGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
