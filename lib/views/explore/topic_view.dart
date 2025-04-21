import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/topic_controller.dart';

class TopicView extends StatelessWidget {
  final String topic;
  final TopicController _topicController = Get.put(TopicController());

  TopicView({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Topic: $topic')),
      body: Obx(() {
        return ListView.builder(
          itemCount: _topicController.topics.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(_topicController.topics[index].name));
          },
        );
      }),
    );
  }
}
