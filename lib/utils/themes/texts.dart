import 'package:flutter/material.dart';

class TextsWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLine;
  final bool? softwrap;
  final TextAlign? textAlignCenter;
  final TextOverflow? overflow;

  const TextsWidget(
      {super.key,
      required this.text,
      this.style,
      this.maxLine,
      this.softwrap,
      this.overflow = TextOverflow.ellipsis,
      this.textAlignCenter});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlignCenter,
      text,
      style: style,
      maxLines: maxLine,
      softWrap: softwrap,
      overflow: overflow,
    );
  }
}
