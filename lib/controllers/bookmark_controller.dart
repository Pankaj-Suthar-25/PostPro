import 'package:get/get.dart';
import '../models/story_model.dart';
import '../services/story_service.dart';

class BookmarkController extends GetxController {
  final StoryService _storyService = StoryService();
  var bookmarkedStories = <StoryModel>[].obs;

  void fetchBookmarkedStories() async {
    try {
      bookmarkedStories.value = await _storyService.fetchBookmarkedStories();
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
