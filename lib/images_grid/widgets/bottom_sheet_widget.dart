import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/theme/theme_mode_provider.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final themeController =
        ThemeModeProvider.of(context).themeControllerNotifier;

    return SizedBox(
      height: 161,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                if (themeController.value == ThemeMode.light) {
                  themeController.value = ThemeMode.dark;
                } else {
                  themeController.value = ThemeMode.light;
                }
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.dark_mode,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    'Тема',
                    style: TextStyle(
                      fontSize: 18,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const Spacer(),
                  ValueListenableBuilder(
                    valueListenable: themeController,
                    builder: (_, themeMode, __) {
                      return Text(
                        themeMode == ThemeMode.light ? 'Светлая' : 'Тёмная',
                        style: TextStyle(
                          fontSize: 18,
                          color: colorScheme.surfaceBright,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.cloud_upload,
                  color: colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 20),
                Text(
                  'Загрузить фото...',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorScheme.onSurface,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
