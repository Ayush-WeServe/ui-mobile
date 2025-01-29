import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/homework_container.dart';
import 'package:ui_mobile/ui/widgets/homework_heading.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import '../../utils/constants/sizes.dart';
import '../common/searchBar_widget.dart';
import '../widgets/subject_filter.dart';

class HomeworkScreen extends StatelessWidget {
  const HomeworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingMD),
            child: Column(
              spacing: AppSizes.spacingXS,
              children: [
                SearchbarWidget(),
                SubjectFilter(),
                HomeworkHeading(),
                HomeworkContainer(
                  subject: AppStrings.basicMath,
                  icon: Icons.calculate_outlined,
                  time: AppStrings.hwtime1,
                  color: AppColors.lightBlueBackground,
                ),
                HomeworkContainer(
                    subject: AppStrings.englishGramer,
                    icon: Icons.book_online,
                    time: AppStrings.hwtime2,
                    color: AppColors.lightGreen),
                HomeworkContainer(
                    subject: AppStrings.science,
                    icon: Icons.science_outlined,
                    time: AppStrings.hwtime3,
                    color: AppColors.lightYellow),
                HomeworkContainer(
                    subject: AppStrings.wordHistory,
                    icon: Icons.wordpress_outlined,
                    time: AppStrings.hwtime4,
                    color: AppColors.lightPink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
