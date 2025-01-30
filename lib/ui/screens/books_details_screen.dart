import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/models/books_model.dart';
import 'package:ui_mobile/ui/common/appbar.dart';
import 'package:ui_mobile/ui/widgets/custom_elevated_button.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/routes.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import 'package:ui_mobile/utils/constants/styles.dart';
import 'package:ui_mobile/utils/themes/texts.dart';

class BooksDetailsScreen extends StatelessWidget {
  const BooksDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final booksData = Get.arguments as Books;
    return Scaffold(
      backgroundColor: AppColors.lightBlue,
      appBar: AppAppbar(text: booksData.title!, page: AppRouteNames.nav),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingXL),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSizes.radiusXXL),
                    child: Image.network(
                      booksData.image!,
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightScaffold,
                  borderRadius: BorderRadius.circular(AppSizes.radiusXL),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.paddingMD),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppSizes.spacingLG,
                    children: [
                      TextsWidget(
                        text: 'Title: ${booksData.title}',
                        textAlignCenter: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: AppStyles.bodyLarge,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: AppSizes.spacingXS,
                        children: [
                          TextsWidget(
                            text: 'Description : ',
                            overflow: TextOverflow.visible,
                            style: AppStyles.labelMedium,
                          ),
                          TextsWidget(
                            text: booksData.subtitle!,
                            overflow: TextOverflow.visible,
                            style: AppStyles.labelSmall,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: AppSizes.spacingXS,
                        children: [
                          TextsWidget(
                            text: 'isbn13 : ',
                            overflow: TextOverflow.visible,
                            style: AppStyles.labelMedium,
                          ),
                          TextsWidget(
                            text: booksData.isbn13!,
                            overflow: TextOverflow.visible,
                            style: AppStyles.labelSmall,
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: CustomElevatedButton(
                          text: booksData.price!,
                          width: AppSizes.imageMD,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
