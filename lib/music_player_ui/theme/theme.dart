import 'dart:math';

import 'package:flutter/material.dart';

class TAppTheme {
  static ThemeData darkTheme = ThemeData(
    textTheme: TTextTheme.textTheme,
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  );
}

class TTextTheme {
  static TextTheme textTheme = TextTheme(
    headline4: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 25, color: Colors.pink.shade100),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 40, color: Colors.pink.shade100),
    headline5: TextStyle(
      fontWeight:FontWeight.bold,fontSize:20,color:Colors.pink.shade100,
    ),
    headline6: const TextStyle(fontSize:16,color:Colors.white),
  );
}
