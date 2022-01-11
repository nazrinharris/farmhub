import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: FarmhubTheme.appThemeData[FarmhubThemeVariants.light],
        home: const FarmhubApp());
  }
}

class FarmhubApp extends StatelessWidget {
  const FarmhubApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
