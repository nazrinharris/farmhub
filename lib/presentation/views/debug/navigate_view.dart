// ignore_for_file: prefer_const_constructors

import 'package:farmhub/core/auth/auth_bloc/auth_bloc.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/cards.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:farmhub/presentation/views/phone_auth_screens/verify_code_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

class NavigateView extends StatelessWidget {
  const NavigateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Debug Navigation Page",
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: DefaultScrollPhysics,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ErrorCard(
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                icon: Icon(Icons.warning, color: Theme.of(context).colorScheme.error),
                mainContent:
                    "Warning, this is a debug screen, and there is no guarantee of functionality of the app from here on.",
                subContent: "If you encounter an issue, simply restart the app.",
              ),
              const UIVerticalSpace14(),
              const UIBorder(),
              const UIVerticalSpace14(),
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
                  Navigator.of(context).pushNamed('/verify_phone');
                },
                width: 200,
                child: Text(
                  'To Verify Phone',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                ),
              ),
              const UIVerticalSpace14(),
              PrimaryButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/verify_code',
                      arguments: VerifyCodeScreenArguments(
                        verificationId: "Verification ID",
                        phoneNumber: PhoneNumber(isoCode: IsoCode.MY, nsn: "182184537"),
                      ));
                },
                width: 200,
                child: Text(
                  'To Verify Code',
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
                  Navigator.of(context).pushNamed('/profile');
                },
                backgroundColor: Theme.of(context).extension<ExtendedColors>()!.paleYellow,
                width: 200,
                child: Text('To Profile', style: Theme.of(context).textTheme.bodyText1),
              ),
              const UIVerticalSpace14(),
              const UIBorder(),
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
                  print(FirebaseAuth.instance.currentUser);
                },
                backgroundColor: Colors.teal,
                width: 200,
                child: Text(
                  'Print Current User',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                ),
              ),
              const UIVerticalSpace14(),
              const UIBorder(),
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
              UICustomVertical(100),
            ],
          ),
        ),
      ),
    );
  }
}
