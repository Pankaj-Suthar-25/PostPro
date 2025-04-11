import 'package:flutter/material.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('For You'),
        Text('Following'),
        Text('Featured'),
        Text(' New'),
        Text('Flutter'),
        Text('iOS'),
        Text('Design'),
      ],
    );
  }
}
