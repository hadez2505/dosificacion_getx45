import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.teal;

  static final decorationContainer = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    shape: BoxShape.rectangle,
    border: Border.all(color: primary)
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    //AppBarTheme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    //CardColor
    cardColor: const Color(0xFFEEEEEE),
    //InputTheme
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: const TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primary, width: 1),
            borderRadius: BorderRadius.circular(5)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primary, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
      ),
    //ElevateButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical:10,horizontal:20)),
        backgroundColor: MaterialStateProperty.all(primary),
        shape: MaterialStateProperty.all(const StadiumBorder()),
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
        minimumSize: MaterialStateProperty.all(const Size(100,40))
      ),
    )
  );
}
