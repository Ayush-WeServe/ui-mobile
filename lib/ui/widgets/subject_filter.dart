import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/styles.dart';

class SubjectFilter extends StatelessWidget {
  const SubjectFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> subjects = <String>[
      'All',
      'Maths',
      'English',
      'Science'
    ];
    final List<String> sortingList = <String>['Do first', 'Do last'];
    String subject = subjects.first;
    String sorting = sortingList.first;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.spacingMD),
      child: Row(
        spacing: AppSizes.spacingXS,
        children: [
          Text(
            'Subjects :',
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
          Text(
            'Sort by :',
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
