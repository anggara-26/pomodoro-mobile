import 'package:flutter/material.dart';
import 'package:fokusin/core/theme/app_palette.dart';

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    foregroundColor: PomodoroColors.background,
    backgroundColor: PomodoroColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(200),
    ),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    elevation: 1,
  ),
);

final filledButtonTheme = FilledButtonThemeData(
  style: ButtonStyle(
    foregroundColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.pressed)) {
          return Colors.white;
        }
        return Colors.white;
      },
    ),
    backgroundColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.pressed)) {
          return PomodoroColors.primary.shade600;
        }
        return PomodoroColors.primary.shade500;
      },
    ),
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(200),
      ),
    ),
    textStyle: WidgetStateProperty.all(
      const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
    elevation: WidgetStateProperty.all(3),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    animationDuration: const Duration(milliseconds: 100),
    overlayColor: WidgetStateProperty.all(Colors.transparent),
    visualDensity: VisualDensity.standard,
  ),
);

final outlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(200),
    ),
    side: BorderSide(
      color: Colors.grey.shade400,
      width: .5,
    ),
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.grey.shade900,
    ),
  ),
);
