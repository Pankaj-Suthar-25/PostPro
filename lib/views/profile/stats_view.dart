import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';

class StatsView extends StatelessWidget {
  final ProfileController _profileController = Get.put(ProfileController());

  StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Center(
        child: Column(
          children: [
            Text('Followers: ${_profileController.user.value.followersCount}'),
            Text('Following: ${_profileController.user.value.followingCount}'),
            // Additional stats can be added here
          ],
        ),
      ),
    );
  }
}
