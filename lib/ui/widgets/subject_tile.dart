import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class SubjectTile extends StatelessWidget {
  final List sub;
  final Color backColor;

  const SubjectTile({super.key, required this.sub, required this.backColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: backColor,
            borderRadius: BorderRadius.circular(AppSizes.radiusMD),
            border: Border.all(
              width: 0.5,
              color: AppColors.dark,
            )),
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingSM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sub[0],
                style: AppStyles.labelLarge,
              ),
              Text(
                sub[1],
                style: AppStyles.labelMedium,
              )
            ],
          ),
        ),
      ),
      onTap: () {
        Get.toNamed(AppRouteNames.subjectScreen, arguments: sub);
      },
    );
  }
}
