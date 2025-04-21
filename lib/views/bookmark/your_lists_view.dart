import 'package:flutter/material.dart';

class YourListsView extends StatelessWidget {
  const YourListsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Lists'),
      ),
      body: Center(
        child: Text('Your Lists View'),
      ),
    );
  }
}
