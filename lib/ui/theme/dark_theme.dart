import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final darkColorScheme = ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: Colors.orangeAccent);

final darkThemeData = ThemeData(
  useMaterial3: true,

  brightness: Brightness.dark,

  textTheme: GoogleFonts.robotoTextTheme(ThemeData(brightness: Brightness.dark).textTheme),

  colorScheme: darkColorScheme,

  appBarTheme: AppBarTheme(
    color: darkColorScheme.primaryContainer,
    foregroundColor: darkColorScheme.onPrimaryContainer,
    actionsPadding: const EdgeInsets.symmetric(horizontal: 4.0),
  ),

  cardTheme: const CardThemeData(margin: EdgeInsets.all(0.0)),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: darkColorScheme.primary,
      backgroundColor: darkColorScheme.onPrimary,
    ),
  ),
);
