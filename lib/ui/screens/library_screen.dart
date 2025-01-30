import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mobile/controllers/library_controller.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingSM),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  controller.toggleGrid();
                },
                icon: Icon(controller.isGrid.value
                    ? Icons.list
                    : Icons.grid_on_outlined),
              ),
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
