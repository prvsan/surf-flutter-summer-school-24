import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/images_grid/images_grid_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Переделать на грид скрин, с кот. переходить на карусель
      home: ImagesGridScreen(),
    );
  }
}
