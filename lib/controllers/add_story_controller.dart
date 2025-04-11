import 'package:get/get.dart';
import '../models/story_model.dart';
import '../services/story_service.dart';

class AddStoryController extends GetxController {
  final StoryService _storyService = StoryService();
  var isLoading = false.obs; // Add this line

  Future<void> addStory(StoryModel story) async {
    isLoading.value = true; // Set loading to true
    await _storyService.addStory(story);
    isLoading.value = false; // Set loading to false
  }
}