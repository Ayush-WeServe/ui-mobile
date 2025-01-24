import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/ui/screens/chat_screen.dart';
import 'package:ui_mobile/ui/screens/home_screen.dart';
import 'package:ui_mobile/ui/screens/schedule_screen.dart';
import 'package:ui_mobile/ui/screens/subjects_screen.dart';

class CustomTabController extends GetxController {
  static CustomTabController get instance => Get.find();

  var selectedIndex = 0.obs;
  final List<Widget> widgetOptions = <Widget>[
    Center(child: HomeScreen()),
    Center(child: ScheduleScreen()),
    Center(child: SubjectsScreen()),
    Center(child: ChatScreen()),
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
    update();
  }
}

class BottomBar extends StatelessWidget {
  final Widget Function(BuildContext, ScrollController) bodyBuilder;
  final Widget child;

  const BottomBar({required this.bodyBuilder, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final ScrollController scrollController =
              PrimaryScrollController.of(context);
          return bodyBuilder(context, scrollController);
        },
      ),
      bottomNavigationBar: child,
    );
  }
}
