import 'package:get/get.dart';
import 'package:ui_mobile/bindings/tab_binding.dart';
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
    ),
    GetPage(
        name: AppRouteNames.tab,
        page: () => TabbarWidget(),
        binding: TabBinding())
  ];
}

class AppRouteNames {
  AppRouteNames._();
  static const String home = '/home';
  static const String splash = '/splash';
  static const String tab = '/home';
}
