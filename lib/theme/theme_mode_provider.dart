import 'package:flutter/material.dart';

class ThemeModeProvider extends InheritedWidget {
  ThemeModeProvider({super.key, required super.child});

  /// Контроллер тем.
  final themeControllerNotifier = ValueNotifier<ThemeMode>(ThemeMode.light);

  /// Пытается найти через контекст виджет, который будет типом [ThemeModeProvider].
  /// Может вернуть null, если не найдет.
  static ThemeModeProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeModeProvider>();
  }

  /// Аналогичная верхней функция, но ноль не вернет. Если в контексте не будет этого
  /// [ThemeModeProvider], то она выдаст ошибку в assert.
  static ThemeModeProvider of(BuildContext context) {
    final ThemeModeProvider? result = maybeOf(context);
    if (result == null) {
      throw Exception('No ThemeModeProvider found in context');
    }
    return result;
  }

  @override
  bool updateShouldNotify(ThemeModeProvider oldWidget) {
    return false;
  }
}
