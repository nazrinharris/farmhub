// ignore_for_file: deprecated_member_use

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

class BodyText1 extends StatelessWidget {
  final String content;

  const BodyText1(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}

class BodyText2 extends StatelessWidget {
  final String content;

  const BodyText2(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}

class Caption extends StatelessWidget {
  final String content;
  final int? fontSize;

  const Caption(this.content, {Key? key, this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.caption,
    );
  }
}
