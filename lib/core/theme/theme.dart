import 'package:flutter/material.dart';
import 'package:fokusin/core/theme/app_palette.dart';
import 'package:fokusin/core/theme/components/button.theme.dart';

class PomodoroTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'Plus Jakarta Sans',
    scaffoldBackgroundColor: PomodoroColors.background,
    colorScheme: ColorScheme.fromSeed(seedColor: PomodoroColors.primary),
    elevatedButtonTheme: elevatedButtonTheme,
    filledButtonTheme: filledButtonTheme,
    outlinedButtonTheme: outlinedButtonTheme,
    textTheme: const TextTheme(
      labelLarge: TextStyle(color: PomodoroColors.backgroundDark),
      labelMedium: TextStyle(color: PomodoroColors.backgroundDark),
      labelSmall: TextStyle(color: PomodoroColors.backgroundDark),
      bodyLarge: TextStyle(color: PomodoroColors.bodyText),
      bodyMedium: TextStyle(color: PomodoroColors.bodyText),
      bodySmall: TextStyle(color: PomodoroColors.bodyText),
      displayLarge: TextStyle(color: PomodoroColors.backgroundDark),
      displayMedium: TextStyle(color: PomodoroColors.backgroundDark),
      displaySmall: TextStyle(color: PomodoroColors.backgroundDark),
      headlineLarge: TextStyle(color: PomodoroColors.backgroundDark),
      headlineMedium: TextStyle(color: PomodoroColors.backgroundDark),
      headlineSmall: TextStyle(color: PomodoroColors.backgroundDark),
      titleLarge: TextStyle(color: PomodoroColors.backgroundDark),
      titleMedium: TextStyle(color: PomodoroColors.backgroundDark),
      titleSmall: TextStyle(color: PomodoroColors.backgroundDark),
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: 'Plus Jakarta Sans',
    scaffoldBackgroundColor: PomodoroColors.backgroundDark,
    colorScheme: ColorScheme.fromSeed(seedColor: PomodoroColors.primary),
    elevatedButtonTheme: elevatedButtonTheme,
    filledButtonTheme: filledButtonTheme,
    outlinedButtonTheme: outlinedButtonTheme,
    textTheme: const TextTheme(
      labelLarge: TextStyle(color: PomodoroColors.background),
      labelMedium: TextStyle(color: PomodoroColors.background),
      labelSmall: TextStyle(color: PomodoroColors.background),
      bodyLarge: TextStyle(color: PomodoroColors.bodyTextDark),
      bodyMedium: TextStyle(color: PomodoroColors.bodyTextDark),
      bodySmall: TextStyle(color: PomodoroColors.bodyTextDark),
      displayLarge: TextStyle(color: PomodoroColors.background),
      displayMedium: TextStyle(color: PomodoroColors.background),
      displaySmall: TextStyle(color: PomodoroColors.background),
      headlineLarge: TextStyle(color: PomodoroColors.background),
      headlineMedium: TextStyle(color: PomodoroColors.background),
      headlineSmall: TextStyle(color: PomodoroColors.background),
      titleLarge: TextStyle(color: PomodoroColors.background),
      titleMedium: TextStyle(color: PomodoroColors.background),
      titleSmall: TextStyle(color: PomodoroColors.background),
    ),
  );
}
