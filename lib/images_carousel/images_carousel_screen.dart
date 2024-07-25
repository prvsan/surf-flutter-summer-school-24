import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/images_carousel/widgets/image_index_indicator.dart';
import 'package:surf_flutter_summer_school_24/images_carousel/widgets/images_view.dart';

class ImagesCarouselScreen extends StatefulWidget {
  /// Начальный индекс страницы.
  final int initialPage;
  final List<String> urlList;

  const ImagesCarouselScreen({
    required this.initialPage,
    required this.urlList,
    super.key,
  });

  @override
  State<ImagesCarouselScreen> createState() => _ImagesCarouselScreenState();
}

class _ImagesCarouselScreenState extends State<ImagesCarouselScreen> {
  late final PageController imagesController;
  late final ValueNotifier<int> currentIndex;

  void _updateCurrentIndex() {
    currentIndex.value = imagesController.page!.round();
  }

  @override
  void initState() {
    super.initState();

    currentIndex = ValueNotifier<int>(widget.initialPage);

    imagesController = PageController(
      viewportFraction: 0.8,
      initialPage: widget.initialPage,
    );
    imagesController.addListener(_updateCurrentIndex);
  }

  @override
  void dispose() {
    currentIndex.dispose();
    imagesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Подтянуть дату публикации, если есть.
        title: Text(
          '21.05.23',
          style: TextStyle(
              color: colorScheme.onPrimary, fontWeight: FontWeight.w200),
        ),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.west,
                color: colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        actions: [
          ImageIndexIndicator(
            indexCount: widget.urlList.length,
            currentIndexListenable: currentIndex,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: ImagesView(
          imagesController: imagesController,
          urlList: widget.urlList,
        ),
      ),
    );
  }
}
