import 'package:get/get.dart';
import '../models/story_model.dart';
import '../services/story_service.dart';

class HomeController extends GetxController {
  final StoryService _storyService = StoryService();
  var stories = <StoryModel>[].obs;

  @override
  void onInit() {
    fetchStories();
    super.onInit();
  }

  void fetchStories() async {
    stories.value = await _storyService.fetchStories();
  }
}
