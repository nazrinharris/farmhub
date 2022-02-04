import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:farmhub/presentation/views/debug/tempnav_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FarmhubApp());
}

class FarmhubApp extends StatelessWidget {
  const FarmhubApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: FarmhubTheme.appThemeData[FarmhubThemeVariants.light],
        home: const NavigateView());
  }
}

class TestStart extends StatelessWidget {
  const TestStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
