import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/ui/common/tab_bar_widget.dart';
import 'package:ui_mobile/ui/screens/chat_screen.dart';
import 'package:ui_mobile/ui/screens/home_screen.dart';
import 'package:ui_mobile/ui/screens/schedule_screen.dart';
import '../../controllers/nav_controller.dart';

class NavBarWidget extends StatelessWidget {
  NavBarWidget({super.key});

  final List<Widget> pages = [
    HomeScreen(),
    ScheduleScreen(),
    TabBarWidget(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = NavBarController.instance;
    return Obx(
      () => Scaffold(
        body: pages[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
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
