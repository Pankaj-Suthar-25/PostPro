// In lib/views/profile/edit_profile_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';
import '../../models/user_model.dart';

class EditProfileView extends StatelessWidget {
  final ProfileController _profileController = Get.put(ProfileController());
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profile')),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: bioController,
              decoration: InputDecoration(labelText: 'Bio'),
            ),
            ElevatedButton(
              onPressed: () {
                _profileController.updateUser(UserModel(
                  id: _profileController.user.value.id,
                  name: nameController.text,
                  email: _profileController.user.value.email,
                  username: _profileController.user.value.username,
                  bio: bioController.text,
                  followersCount: _profileController.user.value.followersCount,
                  followingCount: _profileController.user.value.followingCount,
                ));
                Get.back(); // Go back after updating
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
