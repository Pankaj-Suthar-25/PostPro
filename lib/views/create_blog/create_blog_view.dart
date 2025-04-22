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
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _contentController,
                  decoration: const InputDecoration(
                    hintText: 'Blog Content',
                    border: InputBorder.none,
                  ),
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                ),
              ),
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
