import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/images_carousel/widgets/image_page.dart';

class ImagesView extends StatelessWidget {
  final PageController imagesController;
  const ImagesView({
    super.key,
    required this.imagesController,
    required this.urlList,
  });

  final List<String> urlList;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: urlList.length,
      controller: imagesController,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ImagePage(imageUrl: urlList[index]),
        );
      },
    );
  }
}
