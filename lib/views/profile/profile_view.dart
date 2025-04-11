import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  final ProfileController _profileController = Get.put(ProfileController());

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Obx(() {
        return Column(
          children: [
            Text('Name: ${_profileController.user.value.name}'),
            Text('Followers: ${_profileController.user.value.followersCount}'),
            Text('Following: ${_profileController.user.value.followingCount}'),
          ],
        );
      }),
    );
  }
}