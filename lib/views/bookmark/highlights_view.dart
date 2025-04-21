import 'package:flutter/material.dart';

class HighlightsView extends StatelessWidget {
  const HighlightsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Highlights'),
      ),
      body: Center(
        child: Text('Highlights View'),
      ),
    );
  }
}
