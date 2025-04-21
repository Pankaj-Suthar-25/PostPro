import 'package:flutter/material.dart';

class CreateBlogView extends StatefulWidget {
  const CreateBlogView({super.key});

  @override
  State<CreateBlogView> createState() => _CreateBlogViewState();
}

class _CreateBlogViewState extends State<CreateBlogView> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Blog'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                hintText: 'Blog Title',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _contentController,
              decoration: const InputDecoration(
                hintText: 'Blog Content',
              ),
              maxLines: 10,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Submit the blog
                print('Submit the blog');
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
