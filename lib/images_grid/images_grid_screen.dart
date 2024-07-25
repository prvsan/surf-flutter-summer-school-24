import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/images_carousel/images_carousel_screen.dart';
import 'package:surf_flutter_summer_school_24/images_grid/widgets/bottom_sheet_widget.dart';

class ImagesGridScreen extends StatelessWidget {
  final List<String> urlList = [
    'https://i.redd.it/wdqh6f48jy2d1.jpeg',
    'https://i.pinimg.com/564x/5b/8f/22/5b8f22a8cd3a0991655f6edf2d1dd7e6.jpg',
    'https://i.pinimg.com/564x/ba/a9/dd/baa9dd17178f52acac9a3404e1da17ca.jpg',
    'https://i.pinimg.com/1200x/86/c4/79/86c4791a23696e1c1de548cc8557676b.jpg',
    'https://i.pinimg.com/originals/65/06/6a/65066af2882f32a8aff8fccad40453fb.jpg',
    'https://i.pinimg.com/originals/48/1e/f0/481ef034912a68d4ee0e94ceee0158e3.jpg',
    'https://i.pinimg.com/564x/a3/15/40/a31540397938f46fd69aa733656dd662.jpg',
    'https://i.pinimg.com/1200x/be/05/17/be0517674fcfccc31d2a2df7f9073031.jpg',
  ];

  ImagesGridScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Вдальнейшем заменить на Лого
        title: SizedBox(
          height: 34,
          width: 140,
          child: Image.asset(
            'assets/logo.png',
            color: colorScheme.onPrimary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (_) {
                  return const BottomSheetWidget();
                },
              );
            },
            icon: Icon(
              Icons.more_vert,
              color: colorScheme.onPrimary,
              size: 28,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: urlList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 3,
        ),
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              onTileTap(context, index);
            },
            child: Image.network(
              urlList[index],
              fit: BoxFit.cover,
            ),
          );
        },
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      ),
    );
  }

  void onTileTap(BuildContext context, int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return ImagesCarouselScreen(
            initialPage: index,
            urlList: urlList,
          );
        },
      ),
    );
  }
}
