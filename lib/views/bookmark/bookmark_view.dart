import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/bookmark_controller.dart';
import '../../widgets/story_list_item.dart';

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
              // Navigate to new list view
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
                TextButton(onPressed: () {}, child: Text('Your Lists')),
                TextButton(onPressed: () {}, child: Text('Saved List')),
                TextButton(onPressed: () {}, child: Text('Highlights')),
                TextButton(onPressed: () {}, child: Text('Reading History')),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: _bookmarkController.bookmarkedStories.length,
                itemBuilder: (context, index) {
                  return StoryCard(
                    title: _bookmarkController.bookmarkedStories[index].title,
                    subtitle: 'This is a subtitle',
                    imageUrl: 'https://picsum.photos/200/300',
                    authorName: 'John Doe',
                    authorAvatarUrl: 'https://picsum.photos/50/50',
                    date: '1 day ago',
                    applauseCount: 100,
                    commentCount: 50,
                    dislikeCount: 10,
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
