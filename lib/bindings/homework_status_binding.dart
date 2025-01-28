import 'package:get/get.dart';
import 'package:ui_mobile/controllers/homework_status_controller.dart';

class HomeworkStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeworkStatusController());
  }
}
