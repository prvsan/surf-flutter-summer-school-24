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
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: currentIndexListenable,
          builder: (_, currentIndexListenable, __) {
            return Text(
              (currentIndexListenable + 1).toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: colorScheme.onPrimary,
              ),
            );
          },
        ),
        Text(
          '/${indexCount.toString()}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: colorScheme.surfaceBright,
          ),
        ),
      ],
    );
  }
}
