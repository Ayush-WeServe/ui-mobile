import 'package:get/get.dart';

class HomeworkStatusController extends GetxController {
  static HomeworkStatusController get instance => Get.find();
  var status = 'To Do'.obs;

  void onItemTapped() {
    if (status.value == 'To Do') {
      status.value = 'Done';
    } else {
      status.value = 'To Do';
    }
  }
}
