import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/strings.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.chatScreen),
      ),
    );
  }
}
