import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/bookmark_controller.dart';

class BookmarkView extends StatelessWidget {
  final BookmarkController _bookmarkController = Get.put(BookmarkController());

  BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bookmarks')),
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
