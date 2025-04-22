import 'package:get/get.dart';
import '../models/story_model.dart';
import '../services/story_service.dart';

class ExploreController extends GetxController {
  final StoryService _storyService = StoryService();
  var trendingStories = <StoryModel>[].obs;
  var searchQuery = ''.obs;
  var searchResults = <StoryModel>[].obs;

  @override
  void onInit() {
    fetchTrendingStories();
    super.onInit();
  }

  void fetchTrendingStories() async {
    trendingStories.value = await _storyService.fetchTrendingStories();
  }

  void searchStories(String query) {
    searchQuery.value = query;
    if (query.isEmpty) {
      searchResults.value = [];
    } else {
      searchResults.value = trendingStories.where((story) =>
          story.title.toLowerCase().contains(query.toLowerCase()) ||
          story.content.toLowerCase().contains(query.toLowerCase())).toList();
    }
  }

  void filterByTopic(String topic) {
    if (topic == 'All') {
      searchResults.value = trendingStories;
    } else {
      searchResults.value = trendingStories.where((story) =>
          story.title.toLowerCase().contains(topic.toLowerCase()) ||
          story.content.toLowerCase().contains(topic.toLowerCase())).toList();
    }
  }
}
