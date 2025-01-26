import 'package:get/get.dart';
import 'package:ui_mobile/bindings/tab_binding.dart';
import 'package:ui_mobile/ui/screens/chat_screen.dart';
import 'package:ui_mobile/ui/screens/schedule_screen.dart';
import 'package:ui_mobile/ui/screens/subjects_screen.dart';
import 'package:ui_mobile/ui/common/tabbar_widget.dart';

import '../../ui/screens/home_screen.dart';
import '../../ui/screens/splash_screen.dart';

class AppRoutes {
  AppRoutes._();

  static final routes = [
    GetPage(
      name: AppRouteNames.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
        name: AppRouteNames.home,
        page: () => HomeScreen(),
        binding: TabBinding()),
    GetPage(
        name: AppRouteNames.subjects,
        page: () => SubjectsScreen(),
        binding: TabBinding()),
    GetPage(
        name: AppRouteNames.schedule,
        page: () => ScheduleScreen(),
        binding: TabBinding()),
    GetPage(
        name: AppRouteNames.chat,
        page: () => ChatScreen(),
        binding: TabBinding()),
    GetPage(
        name: AppRouteNames.tab,
        page: () => TabBarWidget(),
        binding: TabBinding())
  ];
}

class AppRouteNames {
  AppRouteNames._();
  static const String home = '/home';
  static const String splash = '/splash';
  static const String tab = '/tab';
  static const String subjects = '/subjects';
  static const String schedule = '/schedule';
  static const String chat = '/chat';
}
