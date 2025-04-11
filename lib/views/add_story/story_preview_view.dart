import 'package:flutter/material.dart';
import '../../models/story_model.dart';

class StoryPreviewView extends StatelessWidget {
  final StoryModel story;

  const StoryPreviewView({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Preview Story')),
      body: Center(
        child: Column(
          children: [
            Text(story.title, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text(story.content),
          ],
        ),
      ),
    );
  }
}
