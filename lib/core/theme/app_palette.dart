import 'package:flutter/material.dart';

class PomodoroColors {
  static const Color background = Color(0xFFFEFEFE); // Name: Cloud Whisper
  static const Color backgroundDark = Color(0xFF222222); // Name: Midnight Slate
  static const Color bodyText = Color(0xFF757575); // Name: Charcoal
  static const Color bodyTextDark = Color(0xFFBDBDBD); // Name: Charcoal Light

  static const MaterialColor primary = MaterialColor(
    0xFFe63946,
    <int, Color>{
      50: Color(0xFFFEF2F3),
      100: Color(0xFFFDE3E5),
      200: Color(0xFFFCCCD0),
      300: Color(0xFFF9A8AE),
      400: Color(0xFFF3767F),
      500: Color(0xFFE63946), // Name: Tomato Blaze
      600: Color(0xFFD52D3A),
      700: Color(0xFFB3222D),
      800: Color(0xFF942029),
      900: Color(0xFF7B2128),
      950: Color(0xFF430C10),
    },
  );

  static const MaterialColor secondary = MaterialColor(
    0xFFED6722,
    <int, Color>{
      50: Color(0xFFFEF6EE),
      100: Color(0xFFFDEAD7),
      200: Color(0xFFFAD2AE),
      300: Color(0xFFF4A261), // Name: Amber Spark
      400: Color(0xFFF18746),
      500: Color(0xFFED6722),
      600: Color(0xFFDE4E18),
      700: Color(0xFFB83A16),
      800: Color(0xFF933019),
      900: Color(0xFF762A18),
      950: Color(0xFF40120A),
    },
  );
}
