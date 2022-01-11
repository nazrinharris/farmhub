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

class FarmhubTheme {
  static final appThemeData = {
    FarmhubThemeVariants.light: ThemeData(
      colorScheme: _farmhubColorSchemeLight,
    ),
  };
}
