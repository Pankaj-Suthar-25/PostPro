import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample notification data
    final List<String> notifications = [
      'Your story has been published!',
      'John Doe liked your story.',
      'Jane Smith commented on your story.',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: notifications.isEmpty
          ? const Center(
              child: Text('No notifications yet.'),
            )
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.notifications),
                    title: Text(notifications[index]),
                    onTap: () {
                      // Handle notification tap
                      print('Notification tapped: ${notifications[index]}');
                    },
                  ),
                );
              },
            ),
    );
  }
}
