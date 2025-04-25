import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/bookmark_controller.dart';
import '../home/story_card.dart';
import 'your_lists_view.dart';
import 'saved_list_view.dart';
import 'highlights_view.dart';
import 'reading_history_view.dart';

class BookmarkView extends StatelessWidget {
  final BookmarkController _bookmarkController = Get.put(BookmarkController());

  BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Library'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              //Get.to(() => NewListView());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(onPressed: () {
                  Get.to(() => YourListsView());
                }, child: Text('Your Lists')),
                TextButton(onPressed: () {
                  Get.to(() => SavedListView());
                }, child: Text('Saved List')),
                TextButton(onPressed: () {
                  Get.to(() => HighlightsView());
                }, child: Text('Highlights')),
                TextButton(onPressed: () {
                  Get.to(() => ReadingHistoryView());
                }, child: Text('Reading History')),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: _bookmarkController.bookmarkedStories.length,
                itemBuilder: (context, index) {
                  return StoryCard(
                    story: _bookmarkController.bookmarkedStories[index],
                      );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
