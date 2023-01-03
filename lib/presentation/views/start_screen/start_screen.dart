import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String farmhubLogoPath = 'assets/images/svg/farmhub-logo.svg';
const String farmhubStartCharacterPath = 'assets/images/svg/farmhub-start-character.svg';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          const StartScreenBackground(),
          StartScreenContent(screen: screen, farmhubLogoPath: farmhubLogoPath),
        ],
      ),
    );
  }
}

class StartScreenBackground extends StatelessWidget {
  const StartScreenBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          child: SvgPicture.asset(farmhubStartCharacterPath),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.1, 1],
              colors: [
                Theme.of(context).colorScheme.background,
                Theme.of(context).colorScheme.background.withOpacity(0.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class StartScreenContent extends StatelessWidget {
  const StartScreenContent({
    Key? key,
    required this.screen,
    required this.farmhubLogoPath,
  }) : super(key: key);

  final Size screen;
  final String farmhubLogoPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UICustomVertical((0.14 * screen.height)),
              SvgPicture.asset(farmhubLogoPath, height: 167),
              const UIVerticalSpace14(),
              const Headline1("Welcome to"),
              const Headline2("Farmhub!"),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PrimaryButton(
                width: 200,
                height: 50,
                content: "Get Started",
                buttonIcon: const Icon(Icons.arrow_forward, size: 24),
                onPressed: () {
                  Navigator.of(context).pushNamed('/register');
                },
              ),
              const UIVerticalSpace24(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14),
                  ),
                  const UICustomHorizontal(4),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: Text(
                      "Login here",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  )
                ],
              ),
              UICustomVertical((0.14 * screen.height)),
            ],
          ),
        )
      ],
    );
  }
}
