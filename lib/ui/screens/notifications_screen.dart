import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/ui/widgets/icon_button_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import 'package:ui_mobile/utils/themes/texts.dart';
import '../common/notification_widget.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextsWidget(
            text: AppStrings.notifications, style: AppStyles.bodyLarge),
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
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.check_rounded))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.paddingMD, vertical: AppSizes.paddingSM),
            child: Column(
              spacing: AppSizes.paddingXS,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextsWidget(text: AppStrings.today),
                SizedBox(
                  height: AppSizes.spacingSM,
                ),
                NotificationWidget(
                  icon: Icons.calculate,
                  subject: AppStrings.basicMath,
                  message: AppStrings.gotA,
                  backColor: AppColors.lightBlueBackground,
                ),
                NotificationWidget(
                  icon: Icons.book_sharp,
                  subject: AppStrings.englishGramer,
                  message: AppStrings.unfinished,
                  backColor: AppColors.lightGreen,
                ),
                NotificationWidget(
                  icon: Icons.wordpress_outlined,
                  subject: AppStrings.wordHistory,
                  message: AppStrings.congrats,
                  backColor: AppColors.lightPink,
                ),
                SizedBox(
                  height: AppSizes.spacingSM,
                ),
                TextsWidget(text: AppStrings.yesterday),
                SizedBox(
                  height: AppSizes.spacingSM,
                ),
                NotificationWidget(
                  icon: Icons.science_outlined,
                  subject: AppStrings.science,
                  message: AppStrings.gotD,
                  backColor: AppColors.lightYellow,
                ),
                NotificationWidget(
                  icon: Icons.wordpress_outlined,
                  subject: AppStrings.wordHistory,
                  message: AppStrings.unfinished,
                  backColor: AppColors.lightGreen,
                ),
                NotificationWidget(
                  icon: Icons.calculate_outlined,
                  subject: AppStrings.basicMath,
                  message: AppStrings.gotA,
                  backColor: AppColors.lightPink,
                ),
                SizedBox(
                  height: AppSizes.spacingSM,
                ),
                TextsWidget(text: AppStrings.date),
                SizedBox(
                  height: AppSizes.spacingSM,
                ),
                NotificationWidget(
                  icon: Icons.calculate,
                  subject: AppStrings.basicMath,
                  message: AppStrings.gotB,
                  backColor: AppColors.lightBlueBackground,
                ),
                NotificationWidget(
                  icon: Icons.book_sharp,
                  subject: AppStrings.englishGramer,
                  message: AppStrings.unfinished,
                  backColor: AppColors.lightGreen,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
