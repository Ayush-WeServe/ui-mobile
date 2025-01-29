import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/common/subject_container.dart';
import 'package:ui_mobile/ui/common/searchBar_widget.dart';
import 'package:ui_mobile/ui/widgets/subject_filter.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/images.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingXS),
          child: Column(
            spacing: AppSizes.spacingXS,
            children: [
              SearchbarWidget(),
              SubjectFilter(),
              SubjectContainer(
                subject: AppStrings.basicMath,
                dateTime: AppStrings.time2,
                professor: AppStrings.kathrynMurphy,
                profileImage: AppImages.user1,
                icon: Icons.calculate_outlined,
                homeWorkStatus: true,
                containerColor: AppColors.lightBlueBackground,
              ),
              SubjectContainer(
                subject: AppStrings.englishGramer,
                dateTime: AppStrings.time3,
                professor: AppStrings.robertFox,
                profileImage: AppImages.user2,
                icon: Icons.book_outlined,
                containerColor: AppColors.lightGreen,
              ),
              SubjectContainer(
                subject: AppStrings.science,
                dateTime: AppStrings.time4,
                professor: AppStrings.wordHistoryProf,
                profileImage: AppImages.user3,
                icon: Icons.science_outlined,
                containerColor: AppColors.lightYellow,
              ),
              SubjectContainer(
                subject: AppStrings.wordHistory,
                dateTime: AppStrings.time5,
                professor: AppStrings.professor,
                profileImage: AppImages.user4,
                icon: Icons.wordpress_outlined,
                containerColor: AppColors.lightPink,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
