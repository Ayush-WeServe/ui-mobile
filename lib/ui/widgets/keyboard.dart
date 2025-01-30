import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/strings.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.paddingMD),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.inputFieldColor,
          borderRadius: BorderRadius.circular(AppSizes.radiusMD),
        ),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.keyboard_alt_outlined),
              suffixIcon:
                  IconButton(onPressed: () {}, icon: Icon(Icons.send_rounded)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(AppSizes.radiusXL)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(AppSizes.radiusXL)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(AppSizes.radiusXL)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(AppSizes.radiusXL)),
              hintText: AppStrings.entermsg),
        ),
      ),
    );
  }
}
