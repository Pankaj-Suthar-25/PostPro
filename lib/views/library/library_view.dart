import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/bookmark_controller.dart';

class LibraryView extends StatelessWidget {
  final BookmarkController _bookmarkController = Get.put(BookmarkController());

  LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _bookmarkController.collections.length,
        itemBuilder: (context, index) {
          return Obx(() => ListTile(title: Text(_bookmarkController.collections[index].name)));
        },
      ),
    );
  }
}
