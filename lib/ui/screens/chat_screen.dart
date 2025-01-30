import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/controllers/chat_controller.dart';
import 'package:ui_mobile/ui/widgets/chat_tile.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import '../../utils/constants/styles.dart';
import '../../utils/themes/texts.dart';
import '../widgets/icon_button_container.dart';
import '../widgets/keyboard.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ChatController.instance;
    return Obx(() {
      if (controller.isLoading.value == true) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }

      if (controller.chat.isEmpty) {
        return const Center(child: Text('No Chat available'));
      }

      return Scaffold(
        backgroundColor: AppColors.lightBlue,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSizes.paddingSM),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextsWidget(
                        text: AppStrings.messages,
                        style: AppStyles.headlineMedium),
                    IconButtonContainer(
                        icon: Icons.search_outlined, onTap: () {})
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    itemCount: controller.chat.length,
                    itemBuilder: (BuildContext context, int index) {
                      final chat = controller.chat[index];
                      return SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(AppSizes.paddingSM),
                          child: Column(
                            spacing: AppSizes.spacingSM,
                            children: [
                              Center(
                                child: TextsWidget(
                                  text: chat.latestTimestamp!,
                                  style: AppStyles.labelSmall,
                                ),
                              ),
                              Row(
                                spacing: AppSizes.spacingXS,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: AppSizes.iconMD,
                                        width: AppSizes.iconMD,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              AppSizes.radiusLG),
                                          child: Image.network(
                                            chat.picture!,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      TextsWidget(
                                        text: chat.name!,
                                        style: AppStyles.labelSmall,
                                      )
                                    ],
                                  ),
                                  ChatTile(msg: chat.lastChat!),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Keyboard(),
            ],
          ),
        ),
      );
    });
  }
}
