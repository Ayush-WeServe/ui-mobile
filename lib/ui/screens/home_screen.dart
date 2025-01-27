import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/common/next_class_container.dart';
import 'package:ui_mobile/ui/common/searchBar_widget.dart';
import 'package:ui_mobile/ui/widgets/box_heading_container.dart';
import 'package:ui_mobile/ui/widgets/home_screen_heading.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/images.dart';
import '../common/events_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingSM),
          child: Column(
            spacing: AppSizes.spacingSM,
            children: [
              // H E A D I N G
              HomeScreenHeading(),

              // S E A R C H F I E L D
              SearchbarWidget(),

              // C L A S S   C O N T A I N E R
              BoxHeadingContainer(topic: AppStrings.nextClassLabel),
              NextClassContainer(
                subject: AppStrings.basicMath,
                dateTime: AppStrings.lectureTime,
                professor: AppStrings.jane,
                profileImage: AppImages.jane,
              ),

              // E V E N T S
              BoxHeadingContainer(topic: AppStrings.eventsLabel),
              Column(
                spacing: AppSizes.spacingSM,
                children: [
                  EventsContainer(
                    img: AppImages.dance,
                    title: AppStrings.danceShow,
                    dateTime: AppStrings.dateTime,
                    color: AppColors.lightPink,
                  ),
                  EventsContainer(
                    img: AppImages.djParty,
                    title: AppStrings.djParty,
                    dateTime: AppStrings.dateTime,
                    color: AppColors.lightGreen,
                  ),
                  EventsContainer(
                    img: AppImages.singing,
                    title: AppStrings.danceShow,
                    dateTime: AppStrings.dateTime,
                    color: AppColors.lightYellow,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
