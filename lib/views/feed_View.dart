import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FeedView extends StatelessWidget {
  FeedView({super.key});

  final List<String> images = [
    'blackman',
    'tattoe',
    'book',
    'pfp',
    'sky',
    'flower',
    'three',
    'two',
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/${images[index]}.jpg'),
        );
      },
    );
  }
}
