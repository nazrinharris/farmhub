// ignore_for_file: prefer_const_constructors

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
              content: "To Login",
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/register');
              },
              width: 200,
              child: Text(
                'To Register',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white),
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/main');
              },
              width: 200,
              child: Text(
                'To Main',
                //style: appTextTheme(context).headline6,
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
                //style: appTextTheme(context).headline6,
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/test');
              },
              width: 200,
              child: Text(
                'To Test',
                //style: appTextTheme(context).headline6,
              ),
            ),
            const UIVerticalSpace14(),
            PrimaryButton(
              onPressed: () {
                //BlocProvider.of<AuthCubit>(context).execSignOut();
              },
              width: 200,
              child: Text(
                'Signout',
                //style: appTextTheme(context).headline6,
              ),
            ),
            const UIVerticalSpace14(),
          ],
        ),
      ),
    );
  }
}
