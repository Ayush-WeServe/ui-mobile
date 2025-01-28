import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/screens/homeWork_screen.dart';
import 'package:ui_mobile/ui/screens/library_screen.dart';
import 'package:ui_mobile/ui/screens/subjects_screen.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.lightScaffold,
              bottom: TabBar(
                  labelStyle: AppStyles.bodyLarge,
                  labelColor: AppColors.dark,
                  unselectedLabelColor: AppColors.greyText,
                  indicatorColor: AppColors.lightScaffold,
                  dividerColor: AppColors.lightScaffold,
                  padding: EdgeInsets.symmetric(vertical: AppSizes.spacingMD),
                  tabs: <Widget>[
                    Tab(
                      text: AppStrings.subjects,
                    ),
                    Tab(
                      text: AppStrings.homework,
                    ),
                    Tab(
                      text: AppStrings.library,
                    ),
                  ]),
            ),
            body: TabBarView(children: <Widget>[
              Center(child: SubjectsScreen()),
              Center(child: HomeworkScreen()),
              Center(child: LibraryScreen()),
            ])),
      ),
    );
  }
}
