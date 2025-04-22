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

  // Dummy data for collections
  List<Collection> get collections => [
        Collection(name: 'Recipes'),
        Collection(name: 'Travel'),
        Collection(name: 'Technology'),
      ];
}

class Collection {
  final String name;

  Collection({required this.name});
}
