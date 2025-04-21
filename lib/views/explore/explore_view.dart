import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/explore_controller.dart';
import '../../widgets/story_list_item.dart';
import 'topic_view.dart';

class ExploreView extends StatelessWidget {
  final ExploreController _exploreController = Get.put(ExploreController());

  ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 56,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search stories',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  _exploreController.searchStories(value);
                },
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(
                    onPressed: () {
                      // Navigate to All topics view
                      // Need to define how 'All' topics are handled/displayed
                      print(
                          'Navigate to All Topics View - Implementation needed'); // Temp placeholder
                    },
                    child: const Text('All')),
                TextButton(
                    onPressed: () {
                      Get.to(() => TopicView(topic: 'Flutter'));
                    },
                    child: const Text('Flutter')),
                TextButton(
                    onPressed: () {
                      Get.to(() => TopicView(topic: 'iOS'));
                    },
                    child: const Text('iOS')),
                TextButton(
                    onPressed: () {
                      Get.to(() => TopicView(topic: 'Design'));
                    },
                    child: const Text('Design')),
                TextButton(
                    onPressed: () {
                      Get.to(() => TopicView(topic: 'Technology'));
                    },
                    child: const Text('Technology')),
                TextButton(
                    onPressed: () {
                      Get.to(() => TopicView(topic: 'Programming'));
                    },
                    child: const Text('Programming')),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: _exploreController.searchQuery.value.isEmpty
                    ? _exploreController.trendingStories.length
                    : _exploreController.searchResults.length,
                itemBuilder: (context, index) {
                  final story = _exploreController.searchQuery.value.isEmpty
                      ? _exploreController.trendingStories[index]
                      : _exploreController.searchResults[index];
                  return StoryCard(
                    title: story.title,
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
