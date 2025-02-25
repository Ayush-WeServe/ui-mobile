import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';

class SearchbarWidget extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const SearchbarWidget({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingMD),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.inputFieldColor,
            borderRadius: BorderRadius.circular(AppSizes.radiusLG)),
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
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
              hintText: AppStrings.search),
        ),
      ),
    );
  }
}
