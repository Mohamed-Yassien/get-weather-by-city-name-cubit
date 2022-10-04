import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static const appColor = Color(0xff19201C);

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: appColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: appColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: appColor,
      ),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      caption: TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.white, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.white, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.white54, width: 1),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.grey, width: 1),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.white,
    )
  );
}
