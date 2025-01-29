import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:ui_mobile/ui/widgets/subject_tile.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

class TimeTable extends StatelessWidget {
  final String time;
  final List subjectTime;
  final Color backColor;
  final bool breakTime;
  final AlignmentGeometry align;

  const TimeTable(
      {super.key,
      required this.time,
      this.subjectTime = const [' '],
      this.backColor = Colors.white,
      this.breakTime = false,
      this.align = Alignment.center});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingMD),
      child: Row(
        spacing: AppSizes.spacingMD,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              spacing: AppSizes.spacingMD,
              children: [
                TextsWidget(
                  text: time,
                )
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.paddingSM),
                child: breakTime
                    ? DottedLine()
                    : Stack(
                        alignment: align,
                        children: [
                          DottedLine(),
                          SubjectTile(
                            sub: subjectTime,
                            backColor: backColor,
                          ),
                        ],
                      ),
              )),
        ],
      ),
    );
  }
}
