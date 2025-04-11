import 'package:get/get.dart';
import '../models/story_model.dart';
import '../services/story_service.dart';

class ExploreController extends GetxController {
  final StoryService _storyService = StoryService();
  var trendingStories = <StoryModel>[].obs;

  @override
  void onInit() {
    fetchTrendingStories();
    super.onInit();
  }

  void fetchTrendingStories() async {
    trendingStories.value = await _storyService.fetchTrendingStories();
  }
}
