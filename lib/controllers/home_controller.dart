import 'package:get/get.dart';
import '../models/story_model.dart';
import '../services/story_service.dart';

class HomeController extends GetxController {
  // ignore: unused_field
  final StoryService _storyService = StoryService();
  var stories = <StoryModel>[].obs;
  var selectedCategory = 'For you'.obs; // Default category

  @override
  void onInit() {
    super.onInit();
    fetchStories();
  }

  void changeCategory(String category) {
    selectedCategory.value = category;
    // TODO: Implement logic to fetch/filter stories based on the new category
    print('Category changed to: $category. Need to implement filtering.');
    // fetchStories(); // Re-fetch or filter stories based on selectedCategory.value
  }

  void fetchStories() async {
    
    stories.value = await _storyService.fetchStories();
  }

  void filterFollowing() {
    stories.value = stories.where((story) => story.authorId == '1').toList();
  }

  void filterByText(String text) {
    stories.value = stories.where((story) => story.title.contains(text) || story.content.contains(text)).toList();
  }

  void likeStory(String storyId) {
    print('Liked story with id: $storyId');
    // Implement like logic here
  }

  void dislikeStory(String storyId) {
    print('Disliked story with id: $storyId');
    // Implement dislike logic here
  }

  void commentOnStory(String storyId) {
    print('Commented on story with id: $storyId');
    // Implement comment logic here
  }
}
