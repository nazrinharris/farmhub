import 'package:flutter/material.dart';

import '../../shared_widgets/appbars.dart';

class ProduceScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isAdmin;

  const ProduceScreenAppBar(this.isAdmin, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultAppBar(
      leadingIcon: const Icon(Icons.arrow_back),
      leadingOnPressed: () {
        Navigator.of(context).pop();
      },
      trailingIcon: const Icon(Icons.bookmark_add_outlined),
      trailingOnPressed: () {},
      secondTrailingIcon: resolveSecondTrailing(isAdmin),
      secondTrailingOnPressed: resolveSecondTrailingOnPressed(isAdmin),
    );
  }

  Icon? resolveSecondTrailing(bool isAdmin) {
    if (isAdmin) return const Icon(Icons.more_vert);
    return null;
  }

  Function()? resolveSecondTrailingOnPressed(bool isAdmin) {
    if (isAdmin) return () {};
    return null;
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
