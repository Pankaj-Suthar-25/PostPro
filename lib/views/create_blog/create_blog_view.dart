import 'package:flutter/material.dart';

class CreateBlogView extends StatelessWidget {
  const CreateBlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Blog'),
      ),
      body: Center(
        child: Text('Create Blog View'),
      ),
    );
  }
}
