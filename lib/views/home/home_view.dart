import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Obx(() {
        return ListView.builder(
          itemCount: _homeController.stories.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(_homeController.stories[index].title));
          },
        );
      }),
    );
  }
}
