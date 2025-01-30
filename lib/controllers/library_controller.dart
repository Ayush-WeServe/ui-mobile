import 'package:get/get.dart';
import 'package:ui_mobile/models/books_model.dart';
import '../utils/constants/apis.dart';
import '../utils/constants/strings.dart';
import 'package:dio/dio.dart';

class LibraryController extends GetxController {
  static LibraryController get instance => Get.find();
  RxBool isGrid = false.obs;
  RxList<Books> books = <Books>[].obs;
  RxBool isLoading = false.obs;

  final Dio _dio = Dio();

  toggleGrid() {
    isGrid.value = !isGrid.value;
  }

  Future<void> fetchData() async {
    isLoading.value = true;
    try {
      final response = await _dio.get(AppApis.booksApi);
      print(response.toString());

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = response.data;

        final List<dynamic> bookList = jsonData['books'];

        final List<Books> bookData =
            bookList.map((json) => Books.fromJson(json)).toList();

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
