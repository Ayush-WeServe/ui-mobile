import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

class ChatTile extends StatelessWidget {
  final String msg;
  const ChatTile({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.paddingMD),
          color: AppColors.lightGreen),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.radiusMD),
        child: Expanded(
          child: TextsWidget(
            text: msg,
            overflow: TextOverflow.visible,
            maxLine: 5,
          ),
        ),
      ),
    );
  }
}
