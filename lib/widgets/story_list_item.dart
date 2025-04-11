import 'package:flutter/material.dart';
import '../models/story_model.dart';

class StoryListItem extends StatelessWidget {
  final StoryModel story;

  const StoryListItem({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(story.title),
      subtitle: Text(story.content),
    );
  }
}
