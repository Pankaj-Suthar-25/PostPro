import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/add_story_controller.dart';
import '../../models/story_model.dart';

class AddStoryView extends StatelessWidget {
  final AddStoryController _addStoryController = Get.put(AddStoryController());
  final StoryModel story = StoryModel(
    id: '',
    title: '',
    content: '',
    authorId: '',
    publicationId: '',
    createdAt: null,
  );

  AddStoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Story')),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (value) => story.title = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Content'),
              onChanged: (value) => story.content = value,
            ),
            ElevatedButton(
              onPressed: () {
                _addStoryController.addStory(story);
                Get.back();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
