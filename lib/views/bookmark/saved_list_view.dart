import 'package:flutter/material.dart';

class SavedListView extends StatelessWidget {
  const SavedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved List'),
      ),
      body: Center(
        child: Text('Saved List View'),
      ),
    );
  }
}
