import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/images_grid/images_grid_screen.dart';
import 'package:surf_flutter_summer_school_24/theme/app_themes.dart';
import 'package:surf_flutter_summer_school_24/theme/theme_mode_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeModeProvider(
      child: const AppEntry(),
    );
  }
}

class AppEntry extends StatelessWidget {
  const AppEntry({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: вынести в отдельный сервис.
    final themeController =
        ThemeModeProvider.of(context).themeControllerNotifier;

    return ValueListenableBuilder(
      valueListenable: themeController,
      builder: (context, themeMode, __) {
        return MaterialApp(
          home: ImagesGridScreen(),
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: themeMode,
        );
      },
    );
  }
}
