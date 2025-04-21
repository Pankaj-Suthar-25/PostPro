import 'package:flutter/material.dart';

class NewListView extends StatelessWidget {
  const NewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New List'),
      ),
      body: Center(
        child: Text('New List View'),
      ),
    );
  }
}
