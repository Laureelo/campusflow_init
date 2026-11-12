import 'package:flutter/material.dart';

const Color brandColor = Color(0xFFEC3013);
const Color actionColor = Color(0xFFC42B13);
const Color backgroundColor = Color(0xFFFFFBFF);

ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: brandColor),
    scaffoldBackgroundColor: backgroundColor,
    textTheme: const TextTheme(
      headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 16),
      bodyMedium: TextStyle(fontSize: 14),
      bodySmall: TextStyle(fontSize: 12),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: actionColor,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(52),
      ),
    ),
  );
}
