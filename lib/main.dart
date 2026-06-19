import 'package:flutter/material.dart';
// import 'package:workout_fitness/view/login/on_boarding_view.dart';
import 'package:workout_fitness/view/menu/menu_view.dart';

import 'common/color_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workout Fitness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Quicksand",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
        scaffoldBackgroundColor: TColor.background,
        appBarTheme: AppBarTheme(
          backgroundColor: TColor.background,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: TColor.primaryText,
            fontFamily: "Quicksand",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        bottomAppBarTheme: BottomAppBarThemeData(
          color: TColor.surface,
          elevation: 1,
        ),
      ),
      home: const MenuView(),
    );
  }
}