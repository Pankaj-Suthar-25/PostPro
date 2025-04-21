import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';
import '../profile/stats_view.dart';

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
                        _profileController.user.value.name,
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
                    // Navigate to edit profile view
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
                    // Show stories
                  },
                  child: Text('Stories'),
                ),
                TextButton(
                  onPressed: () {
                    // Show lists
                  },
                  child: Text('Lists'),
                ),
                TextButton(
                  onPressed: () {
                    // Show about
                  },
                  child: Text('About'),
                ),
              ],
            ),
            // Stories list view
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(title: Text('Story $index'));
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
