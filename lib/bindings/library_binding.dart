import 'package:get/get.dart';
import 'package:ui_mobile/controllers/library_controller.dart';

class LibraryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LibraryController());
  }
}
