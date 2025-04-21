import 'package:flutter/material.dart';

class StoriesView extends StatelessWidget {
  const StoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories'),
      ),
      body: Center(
        child: Text('Stories View'),
      ),
    );
  }
}
