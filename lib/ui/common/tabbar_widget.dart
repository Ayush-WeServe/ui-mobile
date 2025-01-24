import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';

import '../../controllers/tab_controller.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomTabController>(
        init: CustomTabController.instance,
        builder: (tabController) {
          return BottomBar(
            bodyBuilder: (context, scrollController) {
              return tabController
                  .widgetOptions[tabController.selectedIndex.value];
            },
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.schedule_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.subject_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat_outlined), label: ''),
              ],
              currentIndex: tabController.selectedIndex.value,
              selectedItemColor: AppColors.dark,
              selectedIconTheme:
                  IconThemeData(color: Colors.grey, size: AppSizes.buttonMD),
              unselectedItemColor: AppColors.dark,
              onTap: tabController.onItemTapped,
            ),
          );
        });
  }
}
