import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/colors.dart';

class AppThemes {
  AppThemes._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightScaffold,
  );
}
