// ignore_for_file: prefer_const_constructors

import 'package:farmhub/core/auth/auth_bloc/auth_bloc.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigateView extends StatelessWidget {
  const NavigateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
              width: 200,
              child: Text(
                'To Login',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/register');
              },
              width: 200,
              child: Text(
                'To Register',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/choose_user_type');
              },
              width: 200,
              child: Text(
                'To 2nd Register',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/start');
              },
              width: 200,
              child: Text(
                'To Start',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/main');
              },
              backgroundColor: Theme.of(context).colorScheme.primaryVariant,
              width: 200,
              child: Text(
                'To Main',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/nav_main');
              },
              backgroundColor: Theme.of(context).colorScheme.primaryVariant,
              width: 200,
              child: Text(
                'To Nav Main',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/playground');
              },
              backgroundColor: Color.fromARGB(255, 137, 97, 205),
              width: 200,
              child: Text(
                'To Playground',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/playground_two');
              },
              backgroundColor: Color.fromARGB(255, 239, 162, 243),
              width: 200,
              child: Text(
                'To Playground2',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                context.read<AuthBloc>().add(AuthEvent.execSignOut());
              },
              backgroundColor: Theme.of(context).colorScheme.error,
              width: 200,
              child: Text(
                'Sign Out',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
          ],
        ),
      ),
    );
  }
}
