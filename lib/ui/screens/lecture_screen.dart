import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_stack/image_stack.dart';
import 'package:ui_mobile/ui/widgets/icon_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/images.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

class LectureScreen extends StatelessWidget {
  const LectureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      AppImages.user1,
      AppImages.user2,
      AppImages.user3,
      AppImages.user4,
      AppImages.jane
    ];
    final List sub = Get.arguments;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.paddingMD, vertical: AppSizes.paddingSM),
          child: Column(
            spacing: AppSizes.spacingMD,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppSizes.radiusLG),
                      child: Image.asset(
                        AppImages.prof1,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: AppSizes.spacingLG,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSizes.paddingXS,
                            vertical: AppSizes.paddingMD),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          spacing: AppSizes.spacingMD,
                          children: [
                            IconContainer(
                                icon: Icons.keyboard_arrow_left_outlined,
                                onTap: () {
                                  Get.toNamed(AppRouteNames.tab);
                                }),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              spacing: AppSizes.spacingXS,
                              children: [
                                Text(
                                  // 'English',
                                  sub[0],
                                  style: AppStyles.titleLarge,
                                ),
                                Text(
                                  '00:22:25',
                                  style: AppStyles.bodySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(),
                      SizedBox(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.paddingXS,
                            vertical: AppSizes.paddingMD),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.3,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppSizes.radiusMD),
                                child: Image.asset(
                                  AppImages.user2,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Column(
                              spacing: AppSizes.spacingSM,
                              children: [
                                IconContainer(
                                    icon: Icons.mic_outlined,
                                    onTap: () {},
                                    color: true,
                                    backcolor: Colors.transparent,
                                    iconColor: AppColors.lightScaffold),
                                IconContainer(
                                    icon: Icons.videocam_outlined,
                                    onTap: () {},
                                    color: true,
                                    backcolor: Colors.transparent,
                                    iconColor: AppColors.lightScaffold),
                                IconContainer(
                                  icon: Icons.front_hand,
                                  onTap: () {},
                                  color: true,
                                  backcolor: AppColors.lightScaffold,
                                  iconColor: AppColors.dark,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                spacing: AppSizes.spacingXS,
                children: [
                  IconContainer(icon: Icons.add_outlined, onTap: () {}),
                  ImageStack(
                    imageList: images,
                    totalCount: images.length,
                    imageRadius: 50,
                    imageCount: 3,
                    imageBorderWidth: 1,
                  ),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.radiusMD),
                      color: AppColors.inputFieldColor),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.paddingMD,
                        vertical: AppSizes.paddingMD),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: AppSizes.spacingMD,
                      children: [
                        Text(
                          'Easter Howard',
                          style: AppStyles.labelLarge,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Haha that's terrifying",
                              style: AppStyles.labelMedium,
                            ),
                            Text(
                              '9.27am',
                              style: AppStyles.labelMedium,
                            )
                          ],
                        ),
                        Row(
                          spacing: AppSizes.spacingXS,
                          children: [
                            IconContainer(
                              icon: Icons.attach_file_outlined,
                              onTap: () {},
                              border: false,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.lightScaffold,
                                  borderRadius:
                                      BorderRadius.circular(AppSizes.radiusLG)),
                              width: AppSizes.imageXL,
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                            AppSizes.radiusXL)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                            AppSizes.radiusXL)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                            AppSizes.radiusXL)),
                                    disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                            AppSizes.radiusXL)),
                                    hintText: 'Text message..'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
