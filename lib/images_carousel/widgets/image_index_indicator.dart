import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ImageIndexIndicator extends StatelessWidget {
  final ValueListenable<int> currentIndexListenable;
  final int indexCount;

  const ImageIndexIndicator({
    super.key,
    required this.indexCount,
    required this.currentIndexListenable,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: currentIndexListenable,
          builder: (_, currentIndexListenable, __) {
            return Text(
              (currentIndexListenable + 1).toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            );
          },
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
