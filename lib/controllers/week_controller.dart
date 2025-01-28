import 'package:get/get.dart';

class WeekController extends GetxController {
  DateTime selectedDay = DateTime.now();

  void changeDay(DateTime date) {
    selectedDay = date;
  }
}
