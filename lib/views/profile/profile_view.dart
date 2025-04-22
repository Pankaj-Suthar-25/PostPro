import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';
import '../profile/stats_view.dart';
import '../profile/edit_profile_view.dart';
import '../profile/lists_view.dart';
import '../profile/about_view.dart';

class ProfileView extends StatelessWidget {
  final ProfileController _profileController = Get.put(ProfileController());

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://picsum.photos/100/100'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _profileController.user.value.username ?? _profileController.user.value.name,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text('Followers: ${_profileController.user.value.followersCount}'),
                          SizedBox(width: 16),
                          Text('Following: ${_profileController.user.value.followingCount}'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => StatsView());
                  },
                  child: Text('View Stats'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => EditProfileView());
                  },
                  child: Text('Edit Profile'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(() => ListsView());
                  },
                  child: Text('Lists'),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => AboutView());
                  },
                  child: Text('About'),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
