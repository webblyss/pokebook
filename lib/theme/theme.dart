import 'package:flutter/material.dart';

class CustomTheme {
  static final ThemeData theme1 = ThemeData(
    primaryColor: Color(0xffE85382), // #E85382
    cardColor: Color(0xffE85382),
    textTheme: TextTheme(
       displayLarge: TextStyle(fontSize: 32),
    displayMedium: TextStyle(fontSize: 26),
    displaySmall: TextStyle(fontSize: 20),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 14),
    bodySmall: TextStyle(fontSize: 12),
    labelLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    labelMedium: TextStyle(fontSize: 16),
    labelSmall: TextStyle(fontSize: 14),
    ),
  );

  static final ThemeData theme2 = ThemeData(
    primaryColor: Color(0xff39BADF), // #39BADF
    cardColor: Color(0xff39BADF),
    textTheme:TextTheme(
       displayLarge: TextStyle(fontSize: 32),
    displayMedium: TextStyle(fontSize: 26),
    displaySmall: TextStyle(fontSize: 20),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 14),
    bodySmall: TextStyle(fontSize: 12),
    labelLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    labelMedium: TextStyle(fontSize: 16),
    labelSmall: TextStyle(fontSize: 14),
     
    ),
  );

  static final ThemeData theme3 = ThemeData(
    primaryColor: Colors.yellow, // Yellow
    cardColor: Colors.yellow,
    textTheme: TextTheme(
       displayLarge: TextStyle(fontSize: 32),
    displayMedium: TextStyle(fontSize: 26),
    displaySmall: TextStyle(fontSize: 20),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 14),
    bodySmall: TextStyle(fontSize: 12),
    labelLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    labelMedium: TextStyle(fontSize: 16),
    labelSmall: TextStyle(fontSize: 14),
    
    ),
  );
}
