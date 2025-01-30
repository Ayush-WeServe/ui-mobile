import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/controllers/library_controller.dart';
import 'package:ui_mobile/ui/common/searchBar_widget.dart';
import 'package:ui_mobile/ui/widgets/books_grid.dart';
import 'package:ui_mobile/ui/widgets/books_list.dart';
import 'package:ui_mobile/utils/constants/sizes.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LibraryController.instance;

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
          body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              spacing: AppSizes.spacingMD,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: SearchbarWidget(
                        onChanged: (value) => controller.findBook(value))),
                Padding(
                  padding: const EdgeInsets.only(right: AppSizes.paddingXS),
                  child: IconButton(
                    onPressed: () {
                      controller.toggleGrid();
                    },
                    icon: Icon(controller.isGrid.value
                        ? Icons.list
                        : Icons.grid_on_outlined),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: controller.isGrid.value ? BooksGrid() : BooksList(),
          ),
        ],
      ));
    });
  }
}
