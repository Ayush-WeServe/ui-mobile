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
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingXS),
        child: Column(
          spacing: AppSizes.spacingXS,
          children: [
            SearchbarWidget(),
            SubjectFilter(),
            SubjectContainer(
              subject: AppStrings.basicMath,
              dateTime: 'Today 8:15am',
              professor: 'Kathryn Murphy',
              profileImage: AppImages.user1,
              icon: Icons.calculate_outlined,
              homeWorkStatus: true,
              container_color: AppColors.lightBlueBackground,
            ),
            SubjectContainer(
              subject: AppStrings.englishGramer,
              dateTime: 'Today 10:00am',
              professor: 'Robert Fox',
              profileImage: AppImages.user2,
              icon: Icons.book_outlined,
              container_color: AppColors.lightGreen,
            ),
            SubjectContainer(
              subject: AppStrings.science,
              dateTime: 'Today 12:00am',
              professor: 'Harhil Patel',
              profileImage: AppImages.user3,
              icon: Icons.science_outlined,
              container_color: AppColors.lightYellow,
            ),
            SubjectContainer(
              subject: AppStrings.wordHistory,
              dateTime: 'Today 2:15am',
              professor: 'Manav Zala',
              profileImage: AppImages.user4,
              icon: Icons.wordpress_outlined,
              container_color: AppColors.lightPink,
            ),
          ],
        ),
      ),
    ));
  }
}
