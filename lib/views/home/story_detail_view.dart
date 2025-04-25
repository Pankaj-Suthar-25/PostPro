import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/story_model.dart';
import '../../controllers/home_controller.dart';

class StoryDetailView extends StatelessWidget {
  final StoryModel story;

  const StoryDetailView({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(story.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text(
              story.author,
              style: TextStyle(fontSize: 14),
            ),
            
            Text(
              story.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 16),
            Text(
              story.content,
              style: TextStyle(fontSize: 16),
            ),
             SizedBox(height: 24),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               GetBuilder<HomeController>(
                builder: (controller) {
                  return Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_up_alt_outlined),
                          onPressed: () {
                            controller.likeStory(story.id);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_down_alt_outlined),
                          onPressed: () {
                            controller.dislikeStory(story.id);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.comment_outlined),
                          onPressed: () {
                            controller.commentOnStory(story.id);
                          },
                        ),
                      ],
                    ),
                  );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
