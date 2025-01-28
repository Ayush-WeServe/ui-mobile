import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/images.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

class LessonsWidget extends StatelessWidget {
  const LessonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: AppSizes.imageXXL, enableInfiniteScroll: false),
      items: [
        AppImages.prof1,
        AppImages.prof,
        AppImages.user4,
        AppImages.user2,
        AppImages.user3
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width + 20,
                  height: AppSizes.imageXXL,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.radiusMD),
                      color: AppColors.lightBlueBackground),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSizes.radiusMD),
                    child: Image.asset(
                      i,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.paddingSM,
                      vertical: AppSizes.paddingSM),
                  child: Icon(
                    Icons.play_circle_fill_rounded,
                    color: AppColors.lightScaffold,
                    size: AppSizes.buttonXS,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.paddingMD,
                      vertical: AppSizes.paddingMD),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.intro,
                          style: AppStyles.tutorialTopic,
                        ),
                        Text(
                          AppStrings.duration,
                          style: AppStyles.tutorialTime,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        );
      }).toList(),
    );
  }
}
