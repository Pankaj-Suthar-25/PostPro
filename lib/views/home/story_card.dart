import 'package:flutter/material.dart';
import '../../models/story_model.dart';

class StoryCard extends StatelessWidget {
  final StoryModel story;

  const StoryCard({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(story.title, style: TextStyle(fontSize: 20)),
          Text(story.content),
        ],
      ),
    );
  }
}
