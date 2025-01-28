import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';

import '../../utils/constants/colors.dart';

class IconContainer extends StatelessWidget {
  final bool color;
  final IconData icon;

  final Color? backcolor;
  final bool border;
  final Color? iconColor;

  const IconContainer(
      {super.key,
      this.color = false,
      required this.icon,
      this.backcolor,
      this.border = true,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppSizes.iconMD,
        height: AppSizes.iconMD,
        decoration: BoxDecoration(
            color: color ? backcolor : AppColors.lightScaffold,
            borderRadius: BorderRadius.circular(AppSizes.radiusSM),
            border: border
                ? Border.all(
                    width: 0.5,
                    color: AppColors.dark,
                  )
                : null),
        child: Icon(
          icon,
          color: iconColor,
        ));
  }
}
