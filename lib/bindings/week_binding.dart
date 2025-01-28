import 'package:get/get.dart';
import 'package:ui_mobile/controllers/week_controller.dart';

class WeekBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeekController());
  }
}
