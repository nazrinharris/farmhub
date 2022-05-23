import 'package:flutter/material.dart';

enum FarmhubThemeVariants {
  light,
}

/// Farmhub's Light [ColorScheme]
///
/// In the event that one of the colors are [Colors.transparent], this indicates that, at least
/// in design, the color is not used. Refer to the Farmhub Design System.
ColorScheme _farmhubColorSchemeLight = const ColorScheme(
  primary: Color(0xff343A1A),
  primaryVariant: Color(0xff808E60),
  onPrimary: Color(0xffF2FFF6),
  secondary: Color(0xffC5FFD7),
  secondaryVariant: Color(0xff5EF38C),
  surface: Colors.transparent,
  background: Color(0xffF2FFF6),
  error: Color(0xffE15C5C),
  onErrorContainer: Color(0xffF2FFF6),
  onSecondary: Colors.transparent,
  onSurface: Colors.transparent,
  onBackground: Colors.transparent,
  onError: Colors.transparent,
  errorContainer: Color(0xffFFB4B4),
  brightness: Brightness.light,
);

ColorScheme _lightFarmhubColorScheme = ColorScheme.fromSeed(seedColor: const Color(0xff343A1A));

TextTheme _farmhubTextThemeLight = TextTheme(
  headline1: TextStyle(
    fontSize: 28,
    fontFamily: 'Montserrat',
    color: _farmhubColorSchemeLight.primary,
    fontWeight: FontWeight.w800,
  ),
  headline2: TextStyle(
    fontSize: 28,
    fontFamily: 'Montserrat',
    color: _farmhubColorSchemeLight.primaryVariant,
    fontWeight: FontWeight.w800,
  ),
  headline3: TextStyle(
    fontSize: 23,
    fontFamily: 'Montserrat',
    // TODO: Temporary Solution
    color: _farmhubColorSchemeLight.primaryVariant.withOpacity(0.65),
    fontWeight: FontWeight.w800,
  ),
  headline4: TextStyle(
    fontSize: 20,
    fontFamily: 'Montserrat',
    color: _farmhubColorSchemeLight.primary,
    fontWeight: FontWeight.w800,
  ),
  bodyText1: TextStyle(
    fontSize: 14,
    fontFamily: 'Montserrat',
    color: _farmhubColorSchemeLight.primary,
    fontWeight: FontWeight.w600,
  ),
  bodyText2: TextStyle(
    fontSize: 17,
    fontFamily: 'Montserrat',
    color: _farmhubColorSchemeLight.primary,
    fontWeight: FontWeight.w700,
  ),
  caption: TextStyle(
    fontSize: 11,
    fontFamily: 'Montserrat',
    color: _farmhubColorSchemeLight.primary.withOpacity(0.4),
    fontWeight: FontWeight.w600,
  ),
);

ElevatedButtonThemeData _farmhubElevatedButtonThemeDataLight = ElevatedButtonThemeData(
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
      // TODO: Temporary Fix for ColorScheme, update to use the new Seed. Or fix it so that the old one can use
      scaffoldBackgroundColor: _farmhubColorSchemeLight.background,
      backgroundColor: _farmhubColorSchemeLight.background,
      elevatedButtonTheme: _farmhubElevatedButtonThemeDataLight,
      iconTheme: IconThemeData(
        color: _farmhubColorSchemeLight.primary,
      ),
      primaryColor: _farmhubColorSchemeLight.primary,
    ),
  };
}

InputDecoration kInputDecoration({
  String? labelText,
  required String hintText,
  required BuildContext context,
}) {
  return InputDecoration(
      focusColor: Theme.of(context).focusColor,
      labelText: labelText,
      //labelStyle: Theme.of(context).textTheme.bodyText1,
      hintText: hintText,
      // TODO: Update to use a proper TextTheme [Caption]
      hintStyle:
          Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black.withOpacity(0.2)),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.5)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: 2, color: Theme.of(context).colorScheme.primary),
      ));
}
