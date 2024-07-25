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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Подтянуть дату публикации, если есть.
        title: const Text('21.05.23'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          ImageIndexIndicator(
            indexCount: widget.urlList.length,
            currentIndexListenable: currentIndex,
          ),
          const SizedBox(
            width: 10,
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
