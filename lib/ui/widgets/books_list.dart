import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/library_controller.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/routes.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';
import '../../utils/themes/texts.dart';

class BooksList extends StatelessWidget {
  const BooksList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LibraryController.instance;
    final List<Color> color = <Color>[
      AppColors.lightBlue,
      AppColors.lightGreen,
      AppColors.lightPink,
      AppColors.lightYellow,
    ];
    return ListView.builder(
        // scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingMD),
        shrinkWrap: true,
        itemCount: controller.books.length,
        itemBuilder: (BuildContext context, int index) {
          final book = controller.books[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSizes.paddingXS),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(AppRouteNames.booksDetailsScreen, arguments: book);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSizes.radiusMD),
                    color: color[index % color.length]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: AppSizes.paddingMD),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                          borderRadius:
                              BorderRadius.circular(AppSizes.radiusXXL),
                          child: Image.network(
                            book.image!,
                            height: AppSizes.imageMD,
                            fit: BoxFit.cover,
                          )),
                      Expanded(
                        child: Column(
                          spacing: AppSizes.spacingSM,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextsWidget(
                                text: book.title ?? 'No Title',
                                softwrap: true,
                                overflow: TextOverflow.visible,
                                style: AppStyles.labelMedium),
                            TextsWidget(
                              text: book.subtitle ?? 'No Description Available',
                              style: AppStyles.labelSmall,
                              overflow: TextOverflow.visible,
                              maxLine: 2,
                              softwrap: true,
                            ),
                            TextsWidget(
                              text: book.price ?? '',
                              style: AppStyles.labelSmall,
                              softwrap: true,
                            )
                          ],
                        ),
                      ),
                      // IconContainer(
                      //   icon: Icons.done_all_rounded,
                      //   border: false,
                      // )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
