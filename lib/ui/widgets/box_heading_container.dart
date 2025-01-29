import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';

class BoxHeadingContainer extends StatelessWidget {
  final String topic;

  const BoxHeadingContainer({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingMD),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: AppSizes.spacingMD,

        // H E A D I N G
        children: [
          TextsWidget(
            text: topic,
            style: AppStyles.titleMedium,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.seeAllButton,
                style: AppStyles.textButtonLG,
              ))
        ],
      ),
    );
  }
}
