import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';

class StatsView extends StatelessWidget {
  final ProfileController _profileController = Get.find();

  StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stats'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Number of Stories: 10'), // Replace with actual data
            SizedBox(height: 8),
            Text('Followers: ${_profileController.user.value.followersCount}'),
            SizedBox(height: 8),
            Text('Following: ${_profileController.user.value.followingCount}'),
            SizedBox(height: 8),
            Text('Applauses: 100'), // Replace with actual data
          ],
        ),
      ),
    );
  }
}
