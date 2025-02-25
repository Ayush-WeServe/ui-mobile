import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';

import '../../utils/constants/colors.dart';

class IconButtonContainer extends StatelessWidget {
  final bool color;
  final IconData icon;
  final onTap;
  final Color? backcolor;
  final bool border;
  final Color? iconColor;

  const IconButtonContainer(
      {super.key,
      this.color = false,
      required this.icon,
      required this.onTap,
      this.backcolor,
      this.border = true,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: color ? backcolor : AppColors.lightScaffold,
            borderRadius: BorderRadius.circular(AppSizes.radiusMD),
            border: border
                ? Border.all(
                    width: 0.5,
                    color: AppColors.dark,
                  )
                : null),
        child: IconButton(
            onPressed: onTap,
            icon: Icon(
              icon,
              color: iconColor,
            )));
  }
}
