import 'package:flutter/material.dart';

final List<Color> colors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.orange,
  Colors.purple,
  Colors.yellow,
  Colors.cyan,
  Colors.pink,
];

class AppTheme {
  final int colorIndex;

  AppTheme({required this.colorIndex})
    : assert(
        colorIndex >= 0 && colorIndex < colors.length,
        'colorIndex must be between 0 and ${colors.length - 1}',
      );

  ThemeData getTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(centerTitle: true),
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: colors[colorIndex] as MaterialColor,
      ),
    );
  }
}
