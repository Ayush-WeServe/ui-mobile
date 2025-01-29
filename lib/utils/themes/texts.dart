import 'package:flutter/material.dart';

class TextsWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const TextsWidget({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
