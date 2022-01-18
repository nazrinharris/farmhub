import 'package:flutter/material.dart';

enum FarmhubThemeVariants {
  light,
  dark,
}

/// Farmhub's Light [ColorScheme]
///
/// In the event that one of the colors are [Colors.transparent], this indicates that, at least
/// in design, the color is not used. Refer to the Farmhub Design System.
ColorScheme _farmhubColorSchemeLight = const ColorScheme(
  primary: Color(0xff343A1A),
  primaryVariant: Color(0xff808E60),
  secondary: Color(0xffC5FFD7),
  secondaryVariant: Color(0xff5EF38C),
  surface: Colors.transparent,
  background: Color(0xffF2FFF6),
  error: Color(0xffE15C5C),
  onPrimary: Colors.transparent,
  onSecondary: Colors.transparent,
  onSurface: Colors.transparent,
  onBackground: Colors.transparent,
  onError: Colors.transparent,
  brightness: Brightness.light,
);

TextTheme _farmhubTextThemeLight = const TextTheme(
  headline1: TextStyle(
    fontSize: 28,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w800,
  ),
  headline2: TextStyle(
    fontSize: 28,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w800,
  ),
  headline3: TextStyle(
    fontSize: 23,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w800,
  ),
  headline4: TextStyle(
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w800,
  ),
  bodyText1: TextStyle(
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w800,
  ),
);

ElevatedButtonThemeData _farmhubElevatedButtonThemeDataLight =
    ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.zero,
    primary: _farmhubColorSchemeLight.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
  ),
);

class FarmhubTheme {
  static final appThemeData = {
    FarmhubThemeVariants.light: ThemeData(
      colorScheme: _farmhubColorSchemeLight,
      textTheme: _farmhubTextThemeLight,
      elevatedButtonTheme: _farmhubElevatedButtonThemeDataLight,
    ),
  };
}
