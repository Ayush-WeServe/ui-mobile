import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/strings.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

class SubjectFilter extends StatelessWidget {
  const SubjectFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> subjects = <String>[
      AppStrings.all,
      AppStrings.basicMath,
      AppStrings.englishGramer,
      AppStrings.wordHistory
    ];
    final List<String> sortingList = <String>[
      AppStrings.doFirst,
      AppStrings.doLast
    ];
    String subject = subjects.first;
    String sorting = sortingList.first;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.spacingMD),
      child: Row(
        spacing: AppSizes.spacingXS,
        children: [
          TextsWidget(
            text: '${AppStrings.subjects}:',
            style: AppStyles.labelSmall,
          ),
          Expanded(
            child: DropdownMenu<String>(
              textStyle: AppStyles.labelLarge,
              inputDecorationTheme:
                  InputDecorationTheme(border: InputBorder.none),
              initialSelection: subject,
              dropdownMenuEntries:
                  subjects.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry(value: value, label: value);
              }).toList(),
            ),
          ),
          TextsWidget(
            text: AppStrings.sortBy,
            style: AppStyles.labelSmall,
          ),
          Expanded(
            child: DropdownMenu<String>(
              textStyle: AppStyles.labelLarge,
              inputDecorationTheme:
                  InputDecorationTheme(border: InputBorder.none),
              initialSelection: sorting,
              dropdownMenuEntries:
                  sortingList.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry(value: value, label: value);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
