import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/common/subject_container.dart';
import 'package:ui_mobile/ui/common/searchBar_widget.dart';
import 'package:ui_mobile/ui/widgets/subject_filter.dart';
import 'package:ui_mobile/utils/constants/images.dart';
import 'package:ui_mobile/utils/constants/strings.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SearchbarWidget(),
          SubjectFilter(),
          SubjectContainer(
            subject: AppStrings.basicMath,
            dateTime: 'Today 8:15am',
            professor: 'Kathryn Murphy',
            profileImage: AppImages.user1,
            icon: Icons.calculate,
          )
        ],
      ),
    ));
  }
}
