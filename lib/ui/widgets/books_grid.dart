import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/utils/constants/routes.dart';

import '../../controllers/library_controller.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';
import '../../utils/themes/texts.dart';

class BooksGrid extends StatelessWidget {
  const BooksGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LibraryController.instance;
    final List<Color> color = <Color>[
      AppColors.lightBlue,
      AppColors.lightGreen,
      AppColors.lightPink,
      AppColors.lightYellow,
    ];
    return GridView.builder(
        shrinkWrap: true,
        itemCount: controller.books.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: AppSizes.paddingXS,
          mainAxisSpacing: AppSizes.paddingXS,
          mainAxisExtent: 300,
        ),
        itemBuilder: (BuildContext context, int index) {
          final book = controller.books[index];
          return GestureDetector(
            onTap: () {
              Get.toNamed(AppRouteNames.booksDetailsScreen, arguments: book);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.radiusLG),
                  color: color[index % color.length]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    book.image!,
                    height: AppSizes.imageXXL,
                    width: AppSizes.imageXXL,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: AppSizes.paddingXS,
                        children: [
                          TextsWidget(
                              maxLine: 2,
                              text: book.title ?? 'No Title',
                              style: AppStyles.imgTitle),
                          TextsWidget(
                            text: book.price ?? '',
                            style: AppStyles.imgPrice,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
