import 'package:get/get.dart';

class NavBarController extends GetxController {
  static NavBarController get instance => Get.find();
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
