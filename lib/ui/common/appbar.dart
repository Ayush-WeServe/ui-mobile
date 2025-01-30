import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';
import '../../utils/themes/texts.dart';
import '../widgets/icon_button_container.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final String? page;

  const AppAppbar({super.key, required this.text, this.page});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextsWidget(
            text: text,
            style: AppStyles.bodyMedium,
          ),
        ],
      ),
      leading: Visibility(
        visible: page != null,
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingXS),
          child: IconButtonContainer(
            icon: Icons.keyboard_arrow_left,
            onTap: () {
              Get.toNamed(page!);
            },
            border: true,
          ),
        ),
      ),
      backgroundColor: AppColors.lightScaffold,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
