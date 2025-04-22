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
    // Dummy data for testing
    stories.value = [
      StoryModel(
        id: '1',
        title: 'Story 1',
        content: 'This is the content of story 1.',
        authorId: '1',
        publicationId: '1',
        createdAt: DateTime.now(),
        topicIds: [],
        applauseCount: 10,
        commentCount: 5,
        dislikeCount: 2,
        status: 'published',
      ),
      StoryModel(
        id: '2',
        title: 'Story 2',
        content: 'This is the content of story 2.',
        authorId: '2',
        publicationId: '2',
        createdAt: DateTime.now(),
        topicIds: [],
        applauseCount: 15,
        commentCount: 8,
        dislikeCount: 1,
        status: 'published',
      ),
    ];
    // stories.value = await _storyService.fetchStories();
  }

  void filterFollowing() {
    stories.value = stories.where((story) => story.authorId == '1').toList();
  }

  void filterByText(String text) {
    stories.value = stories.where((story) => story.title.contains(text) || story.content.contains(text)).toList();
  }
}
