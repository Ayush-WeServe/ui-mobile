import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/models/friends_model.dart';
import '../utils/constants/apis.dart';
import '../utils/constants/strings.dart';

class ChatController extends GetxController {
  static ChatController get instance => Get.find();

  RxList<FriendsNew> chat = <FriendsNew>[].obs;
  RxBool isLoading = false.obs;

  final Dio _dio = Dio();

  Future<void> fetchChatData() async {
    isLoading.value = true;
    try {
      final response = await _dio.get(AppApis.chatApi);

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = response.data;
        // print(response.toString());

        final List<dynamic> chatting = jsonData['friends'];

        final List<FriendsNew> chatData =
            chatting.map((json) => FriendsNew.fromJson(json)).toList();

        chat.value = chatData;
      } else {
        throw Exception(AppStrings.networkError);
      }
    } catch (e) {
      print('Error============  ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchChatData();
  }
}
