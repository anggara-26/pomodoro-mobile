import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fokusin/core/theme/theme.dart';
import 'package:fokusin/router.dart';

Future main() async {
  // runApp(MultiBlocProvider(providers: [], child: const MainApp()));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: PomodoroTheme.lightTheme,
      darkTheme: PomodoroTheme.darkTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
