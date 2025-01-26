import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/ui/screens/chat_screen.dart';
import 'package:ui_mobile/ui/screens/home_screen.dart';
import 'package:ui_mobile/ui/screens/schedule_screen.dart';
import 'package:ui_mobile/ui/screens/subjects_screen.dart';
import '../../controllers/tab_controller.dart';

class TabBarWidget extends StatelessWidget {
  final TabBarController controller = Get.put(TabBarController());

  final List<Widget> pages = [
    HomeScreen(),
    ScheduleScreen(),
    SubjectsScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.subject_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: ''),
          ],
        ),
      ),
    );
  }
}
