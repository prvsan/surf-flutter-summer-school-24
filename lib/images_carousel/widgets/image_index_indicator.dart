import 'package:flutter/material.dart';

class ImageIndexIndicator extends StatelessWidget {
  final int currentIndex;
  final int indexCount;
  const ImageIndexIndicator({
    super.key,
    required this.currentIndex,
    required this.indexCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          currentIndex.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          '/${indexCount.toString()}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
