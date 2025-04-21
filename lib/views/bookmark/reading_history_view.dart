import 'package:flutter/material.dart';

class ReadingHistoryView extends StatelessWidget {
  const ReadingHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading History'),
      ),
      body: Center(
        child: Text('Reading History View'),
      ),
    );
  }
}
