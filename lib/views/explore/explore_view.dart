import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/explore_controller.dart';

class ExploreView extends StatelessWidget {
  final ExploreController _exploreController = Get.put(ExploreController());

  ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explore')),
      body: Obx(() {
        return ListView.builder(
          itemCount: _exploreController.trendingStories.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(_exploreController.trendingStories[index].title));
          },
        );
      }),
    );
  }
}
