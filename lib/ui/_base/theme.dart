import 'package:flutter/material.dart';

abstract class Theme {
  static ThemeData base = ThemeData(
    useMaterial3: true,
  );

  static ThemeData light = ThemeData.light(useMaterial3: true)
    ..copyWith(
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
      ),
    );

  static ThemeData dark = ThemeData.dark(useMaterial3: true)
    ..copyWith(
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
      ),
    );
}
