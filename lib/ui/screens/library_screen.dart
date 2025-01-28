import 'package:flutter/material.dart';
import 'package:ui_mobile/utils/constants/strings.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.libraryScreen),
      ),
    );
  }
}
