import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        trailingIcon: const Icon(Icons.arrow_back),
        trailingOnPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: Center(
        child: Text('Login Screen'),
      ),
    );
  }
}
