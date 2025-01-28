import 'package:get/get.dart';
import 'package:ui_mobile/bindings/tab_binding.dart';
import 'package:ui_mobile/bindings/week_binding.dart';
import 'package:ui_mobile/ui/common/tab_bar_widget.dart';
import 'package:ui_mobile/ui/screens/chat_screen.dart';
import 'package:ui_mobile/ui/screens/homeWork_screen.dart';
import 'package:ui_mobile/ui/screens/lecture_screen.dart';
import 'package:ui_mobile/ui/screens/library_screen.dart';
import 'package:ui_mobile/ui/screens/notifications_screen.dart';
import 'package:ui_mobile/ui/screens/schedule_screen.dart';
import 'package:ui_mobile/ui/screens/subjects_screen.dart';
import 'package:ui_mobile/ui/common/navbar_widget.dart';

import '../../ui/screens/home_screen.dart';
import '../../ui/screens/splash_screen.dart';
import '../../ui/screens/subject_details_screen.dart';

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
        binding: NavBinding()),
    GetPage(
        name: AppRouteNames.subjects,
        page: () => SubjectsScreen(),
        binding: NavBinding()),
    GetPage(
        name: AppRouteNames.schedule,
        page: () => ScheduleScreen(),
        binding: WeekBinding()),
    GetPage(
        name: AppRouteNames.chat,
        page: () => ChatScreen(),
        binding: NavBinding()),
    GetPage(
        name: AppRouteNames.nav,
        page: () => NavBarWidget(),
        binding: NavBinding()),
    GetPage(
      name: AppRouteNames.notification,
      page: () => NotificationsScreen(),
    ),
    GetPage(
      name: AppRouteNames.subjectScreen,
      page: () => SubjectsDetailScreen(),
    ),
    GetPage(
      name: AppRouteNames.lectureScreen,
      page: () => LectureScreen(),
    ),
    GetPage(
      name: AppRouteNames.tabBar,
      page: () => TabBarWidget(),
    ),
    GetPage(
      name: AppRouteNames.homeworkScreen,
      page: () => HomeworkScreen(),
    ),
    GetPage(
      name: AppRouteNames.libraryScreen,
      page: () => LibraryScreen(),
    ),
  ];
}

class AppRouteNames {
  AppRouteNames._();
  static const String home = '/home';
  static const String splash = '/splash';
  static const String nav = '/nav';
  static const String subjects = '/subjects';
  static const String schedule = '/schedule';
  static const String chat = '/chat';
  static const String notification = '/notification-screen';
  static const String subjectScreen = '/Subject-Details';
  static const String lectureScreen = '/lecture-Screen';
  static const String tabBar = '/TabBar-Widget';
  static const String homeworkScreen = '/homework-Screen';
  static const String libraryScreen = '/library-Screen';
}
