import 'package:flutter/material.dart';

final lightTheme = ThemeData.light(
  useMaterial3: true,
).copyWith(
  cardTheme: CardTheme(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),
);

final darkTheme = ThemeData.dark(
  useMaterial3: true,
).copyWith(
  cardTheme: CardTheme(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),
);
