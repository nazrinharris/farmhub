import 'package:flutter/material.dart';

class UITopPadding extends StatelessWidget {
  const UITopPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).padding.top,
    );
  }
}

class UICustomVertical extends StatelessWidget {
  final double height;

  const UICustomVertical(
    this.height, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class UICustomHorizontal extends StatelessWidget {
  final double width;

  const UICustomHorizontal(
    this.width, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

//! HORIZONTAL UI HELPERS

class UIHorizontalSpace6 extends StatelessWidget {
  const UIHorizontalSpace6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 6.0);
  }
}

class UIHorizontalSpace14 extends StatelessWidget {
  const UIHorizontalSpace14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 14.0);
  }
}

class UIHorizontalSpace24 extends StatelessWidget {
  const UIHorizontalSpace24({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 24.0);
  }
}

class UIHorizontalSpace30 extends StatelessWidget {
  const UIHorizontalSpace30({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 30.0);
  }
}

//! VERTICAL UI HELPERS

class UIVerticalSpace6 extends StatelessWidget {
  const UIVerticalSpace6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 6.0);
  }
}

class UIVerticalSpace14 extends StatelessWidget {
  const UIVerticalSpace14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 14.0);
  }
}

class UIVerticalSpace24 extends StatelessWidget {
  const UIVerticalSpace24({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 24.0);
  }
}

class UIVerticalSpace30 extends StatelessWidget {
  const UIVerticalSpace30({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 30.0);
  }
}

//! DEBUG UI HELPERS

class DebugRedBox extends StatelessWidget {
  const DebugRedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }
}
