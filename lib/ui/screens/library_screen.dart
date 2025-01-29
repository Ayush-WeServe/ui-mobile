import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/controllers/library_controller.dart';
import 'package:ui_mobile/ui/widgets/icon_container.dart';
import 'package:ui_mobile/utils/constants/colors.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';
import '../../utils/constants/styles.dart';
import '../../utils/themes/texts.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final orientation = MediaQuery.of(context).orientation;
    final controller = LibraryController.instance;
    final List<Color> color = <Color>[
      AppColors.lightBlue,
      AppColors.lightGreen,
      AppColors.lightPink,
      AppColors.lightYellow,
    ];
    return Obx(() {
      if (controller.isLoading.value == true) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }

      if (controller.books.isEmpty) {
        return const Center(child: Text('No books available'));
      }

      return Scaffold(
          body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingXS),
          child: Padding(
            padding: EdgeInsets.all(AppSizes.paddingMD),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: controller.books.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: AppSizes.paddingXS,
                  mainAxisSpacing: AppSizes.paddingXS,
                  mainAxisExtent: 300,
                ),
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
                itemBuilder: (BuildContext context, int index) {
                  final book = controller.books[index];
                  return Container(
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
                  );
                }),
          ),
          // child: ListView.builder(
          //     // scrollDirection: Axis.horizontal,
          //     padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingMD),
          //     shrinkWrap: true,
          //     itemCount: controller.books.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       final book = controller.books[index];
          //       return Padding(
          //         padding:
          //             const EdgeInsets.symmetric(vertical: AppSizes.paddingXS),
          //         child: Container(
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(AppSizes.radiusMD),
          //               color: color[index % color.length]),
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(
          //                 vertical: AppSizes.paddingMD),
          //             child: Row(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 ClipRRect(
          //                     borderRadius:
          //                         BorderRadius.circular(AppSizes.radiusXXL),
          //                     child: Image.network(
          //                       book.image!,
          //                       height: AppSizes.imageMD,
          //                       fit: BoxFit.cover,
          //                     )),
          //                 Expanded(
          //                   child: Column(
          //                     spacing: AppSizes.spacingSM,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       TextsWidget(
          //                           text: book.title ?? 'No Title',
          //                           softwrap: true,
          //                           overflow: TextOverflow.visible,
          //                           style: AppStyles.labelMedium),
          //                       TextsWidget(
          //                         text: book.subtitle ?? '',
          //                         style: AppStyles.labelSmall,
          //                         overflow: TextOverflow.visible,
          //                         softwrap: true,
          //                       ),
          //                       TextsWidget(
          //                         text: book.price ?? '',
          //                         style: AppStyles.labelSmall,
          //                         softwrap: true,
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //                 // IconContainer(
          //                 //   icon: Icons.done_all_rounded,
          //                 //   border: false,
          //                 // )
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     }),
        ),
      ));
    });
  }
}
