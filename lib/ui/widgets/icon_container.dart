import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';

import '../../utils/constants/colors.dart';

class IconContainer extends StatelessWidget {
  final bool color;
  final IconData icon;
  final Function onTap;
  final Color? backcolor;

  const IconContainer(
      {super.key,
      this.color = false,
      required this.icon,
      required this.onTap,
      this.backcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: color ? backcolor : AppColors.lightScaffold,
            borderRadius: BorderRadius.circular(AppSizes.radiusMD),
            border: Border.all(
              width: 0.5,
              color: AppColors.dark,
            )),
        child: IconButton(onPressed: () {}, icon: Icon(icon)));
  }
}
