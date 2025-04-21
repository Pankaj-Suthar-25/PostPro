import 'package:get/get.dart';
import '../models/story_model.dart';
import '../services/story_service.dart';

class HomeController extends GetxController {
  // ignore: unused_field
  final StoryService _storyService = StoryService();
  var stories = <StoryModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchStories();
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
}
