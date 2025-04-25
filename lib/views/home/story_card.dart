import 'package:flutter/material.dart';
import 'story_detail_view.dart';
import '../../models/story_model.dart';

import 'package:get/get.dart';

class StoryCard extends StatelessWidget {
  final StoryModel story;

  const StoryCard({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => StoryDetailView(story: story));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(story.author, style: TextStyle(fontSize: 14),),
              const SizedBox(height: 5),
               Text(
                story.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(story.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                story.content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up_alt_outlined),
                        onPressed: () {
                          // Implement like functionality
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.thumb_down_alt_outlined),
                        onPressed: () {
                          // Implement dislike functionality
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.comment_outlined),
                        onPressed: () {
                          // Implement comment functionality
                        },
                      ),
                    ],
                  ),
                  PopupMenuButton<String>(
                    onSelected: (String item) {
                      // Handle item selection
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'save',
                        child: Text('Save'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'report',
                        child: Text('Report'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
