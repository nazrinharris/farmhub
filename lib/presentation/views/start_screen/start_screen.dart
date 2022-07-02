import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Start Screen"),
          PrimaryButton(
            content: "Login",
            onPressed: () {
              Navigator.of(context).pushNamed('/login');
            },
          ),
          PrimaryButton(
            content: "Register",
            onPressed: () {
              Navigator.of(context).pushNamed('/register');
            },
          ),
        ],
      ),
    );
  }
}
