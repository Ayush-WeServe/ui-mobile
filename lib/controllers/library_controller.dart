import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ui_mobile/models/books_model.dart';

import '../utils/constants/apis.dart';
import '../utils/constants/strings.dart';

class LibraryController extends GetxController {
  static LibraryController get instance => Get.find();

  RxList<Books> books = <Books>[].obs;
  RxBool isLoading = false.obs;

  Future<void> fetchData() async {
    isLoading.value = true;
    try {
      final response = await http.get(Uri.parse(AppApis.booksApi));

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = json.decode(response.body);
        // print(response.body);

        var bookData = (jsonData['books'] as List)
            .map((json) => Books.fromJson(json))
            .toList();
        books.value = bookData;
      } else {
        throw Exception(AppStrings.networkError);
      }
    } catch (e) {
      print('Error============${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }
}
