// class CustomTheme {

// }

import 'package:flutter/material.dart';

class CustomTheme {
  static const int _primaryColor = 0xFFEF6C57; // New primary color
  static const MaterialColor primarySwatch = MaterialColor(_primaryColor, <int, Color>{
    50: Color(0xFFFFFAF5), // Lighter shade
    100: Color(0xFFFDE9E1),
    200: Color(0xFFFBD3C9),
    300: Color(0xFFF9BDA1),
    400: Color(0xFFF7A779),
    500: Color(_primaryColor), // Original color
    600: Color(0xFFE8614C),
    700: Color(0xFFDE5641),
    800: Color(0xFFD44B36),
    900: Color(0xFFCA402B), // Darker shade
  });

  static const int _textColor = 0xFF6B7280; // Keep text color as before
  static const MaterialColor darkSwatch = MaterialColor(_textColor, <int, Color>{
    50: Color(0xFFF9FAFB),
    100: Color(0xFFF3F4F6),
    200: Color(0xFFE5E7EB),
    300: Color(0xFFD1D5DB),
    400: Color(0xFF9CA3AF),
    500: Color(_textColor),
    600: Color(0xFF4B5563),
    700: Color(0xFF374151),
    800: Color(0xFF1F2937),
    900: Color(0xFF111827),
  });

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    cardColor: Colors.white,
    dividerTheme: const DividerThemeData(color: Color(0x1C000000)),
    fontFamily: "Epilogue",
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFEF6C57),
      foregroundColor: Colors.white,
    ),
    highlightColor: darkSwatch,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: primarySwatch).copyWith(surface: Colors.white),
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 1.5),
      ),
    ),
  );
}
