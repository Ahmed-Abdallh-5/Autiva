import 'package:flutter/material.dart';

ThemeData customwhiteTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Color.fromARGB(255, 250, 251, 255),
  appBarTheme: AppBarTheme(
    backgroundColor:
        Color.fromARGB(255, 250, 251, 255), // Same as scaffold background
    elevation: 0, // Optional: Remove shadow for a flat design
    // iconTheme: IconThemeData(color: Colors.white), // Optional: Set icon color
    // titleTextStyle: TextStyle(
    //     color: Colors.white, fontSize: 18), // Optional: Set title style
  ),
);

ThemeData customDarkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Color.fromARGB(255, 21, 21, 21),
  appBarTheme: AppBarTheme(
    backgroundColor:
        Color.fromARGB(255, 21, 21, 21), // Same as scaffold background
    elevation: 0, // Optional: Remove shadow for a flat design
    // iconTheme: IconThemeData(color: Colors.white), // Optional: Set icon color
    // titleTextStyle: TextStyle(
    //     color: Colors.white, fontSize: 18), // Optional: Set title style
  ),
);
