import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_story_controller.dart';
import '../models/story_model.dart';

class AddStoryView extends StatelessWidget {
  final AddStoryController _controller = Get.put(AddStoryController());

  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  AddStoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Story'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: contentController,
              decoration: InputDecoration(labelText: 'Content'),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            Obx(() {
              return ElevatedButton(
                onPressed: _controller.isLoading.value
                    ? null
                    : () {
                        _controller.addStory(StoryModel(
                          title: titleController.text,
                          content: contentController.text,
                          authorId: 'currentUser Id', // Replace with actual user ID
                          createdAt: DateTime.now(), id: '', publicationId: '',
                        ));
                      },
                child: _controller.isLoading.value
                    ? CircularProgressIndicator()
                    : Text('Add Story'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
