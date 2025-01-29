import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/icon_button_container.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

class EventsContainer extends StatelessWidget {
  final String img;
  final String title;
  final String dateTime;
  final Color color;

  const EventsContainer(
      {super.key,
      required this.img,
      required this.title,
      required this.dateTime,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.radiusMD), color: color),
      width: double.infinity,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.radiusMD),
            child: Image.asset(
              img,
              height: AppSizes.imageSM,
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSizes.paddingMD),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: AppSizes.spacingMD,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextsWidget(
                        text: title,
                        style: AppStyles.labelLarge,
                      ),
                      TextsWidget(
                        text: dateTime,
                        style: AppStyles.labelSmall,
                      ),
                    ],
                  ),
                  IconButtonContainer(
                      icon: Icons.heart_broken_outlined, onTap: () {})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
