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
    topicIds: [],
    applauseCount: 0,
    commentCount: 0,
    dislikeCount: 0,
    status: 'published',
  );

  AddStoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text('Add Story'),
        actions: [
          IconButton(
            icon: Icon(Icons.visibility),
            onPressed: () {
              // Navigate to story preview view
            },
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'edit_story_preview',
                child: Text('Edit story preview'),
              ),
              PopupMenuItem(
                value: 'add_or_edit_topics',
                child: Text('Add or edit topics'),
              ),
              PopupMenuItem(
                value: 'submit_to_publication',
                child: Text('Submit to a publication'),
              ),
            ],
          ),
        ],
      ),
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
