import 'package:get/get.dart';
import '../models/topic_model.dart';
import '../services/topic_service.dart';

class TopicController extends GetxController {
  final TopicService _topicService = TopicService();
  var topics = <TopicModel>[].obs;

  // In lib/controllers/topic_controller.dart
  void fetchTopics() async {
    try {
      topics.value = await _topicService.fetchTopics();
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
