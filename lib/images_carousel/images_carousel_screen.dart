import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/images_carousel/widgets/image_index_indicator.dart';
import 'package:surf_flutter_summer_school_24/images_carousel/widgets/images_view.dart';

class ImagesCarouselScreen extends StatefulWidget {
  const ImagesCarouselScreen({
    super.key,
  });

  @override
  State<ImagesCarouselScreen> createState() => _ImagesCarouselScreenState();
}

class _ImagesCarouselScreenState extends State<ImagesCarouselScreen> {
  final imagesController = PageController(viewportFraction: 0.8);

  late int currentImageIndex;

  final List<String> urlList = [
    'https://i.redd.it/wdqh6f48jy2d1.jpeg',
    'https://i.pinimg.com/564x/5b/8f/22/5b8f22a8cd3a0991655f6edf2d1dd7e6.jpg',
    'https://i.pinimg.com/564x/ba/a9/dd/baa9dd17178f52acac9a3404e1da17ca.jpg',
  ];

  @override
  void dispose() {
    imagesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('21.05.23'),
        leading: const Icon(Icons.arrow_back),
        actions: [
          ImageIndexIndicator(currentIndex: 13, indexCount: urlList.length),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: ImagesView(
          imagesController: imagesController,
          urlList: urlList,
        ),
      ),
    );
  }
}
