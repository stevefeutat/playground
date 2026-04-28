import 'package:flutter/material.dart';

// Kinda like a getter to import theme from other files
final ThemeData asthaTutorialTheme = _asthaTutorialTheme();

//Define Base theme for app
ThemeData _asthaTutorialTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: const Color.fromARGB(1000, 21, 115, 125),
      onPrimary: Colors.white,
      secondary: const Color.fromARGB(1000, 255, 140, 64),
      tertiary: const Color.fromARGB(1000, 190, 251, 255),
      onTertiary: Color.fromARGB(1000, 86, 167, 178),
      onSecondary: Colors.white,
      error: Colors.red,
      surface: const Color.fromARGB(255, 228, 243, 228),
      onSurface: Colors.black,
    ),
    textTheme: _asthaTutorialTextTheme(base.textTheme),
    // below text theme add this
    // Define styles for elevated button
    elevatedButtonTheme: _elevatedButtonTheme(base.elevatedButtonTheme),
    inputDecorationTheme: _inputDecorationTheme(base.inputDecorationTheme),

    // Set Themes for Input Your homework

    // Define theme for text input
  );
}

// Outside of _asthaTutorialTheme function  create another function

TextTheme _asthaTutorialTextTheme(TextTheme base) => base.copyWith(
// This'll be our appbars title
      headlineLarge: base.headlineLarge!.copyWith(
          fontFamily: "Proxima Nova",
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: Colors.white),
// for widgets heading/title
      headlineMedium: base.headlineMedium!.copyWith(
        fontFamily: "Proxima Nova",
        fontSize: 26,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
// for sub-widgets heading/title
      headlineSmall: base.headlineSmall!.copyWith(
        fontFamily: "Proxima Nova",
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
// for widgets contents/paragraph
      bodyLarge: base.bodyLarge!.copyWith(
          fontFamily: "Proxima Nova",
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.black),
// for sub-widgets contents/paragraph
      bodyMedium: base.bodyMedium!.copyWith(
          fontFamily: "Proxima Nova",
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: Colors.black),
    );

InputDecorationTheme _inputDecorationTheme(InputDecorationTheme base) =>
    const InputDecorationTheme(
// Label color for the input widget
        labelStyle: TextStyle(color: Colors.black),
// Define border of input form while focused on
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            color: Color.fromARGB(1000, 255, 140, 64),
          ),
        ));

ElevatedButtonThemeData _elevatedButtonTheme(ElevatedButtonThemeData base) =>
    ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          const Color.fromARGB(1000, 86, 167, 178),
        ),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
    );
