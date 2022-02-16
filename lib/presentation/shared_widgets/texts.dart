import 'package:flutter/material.dart';

class Headline1 extends StatelessWidget {
  final String content;

  const Headline1(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.headline1,
    );
  }
}

class Headline2 extends StatelessWidget {
  final String content;

  const Headline2(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
