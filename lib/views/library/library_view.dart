import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/bookmark_controller.dart';

class LibraryView extends StatelessWidget {
  final BookmarkController _bookmarkController = Get.put(BookmarkController());

  LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return ListView.builder(
          itemCount: _bookmarkController.bookmarkedStories.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(_bookmarkController.bookmarkedStories[index].title));
          },
        );
      }),
    );
  }
}
