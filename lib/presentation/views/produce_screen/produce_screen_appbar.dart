// ignore_for_file: prefer_const_constructors

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
      secondTrailingChild: resolveSecondTrailing(context, isAdmin),
    );
  }

  Widget? resolveSecondTrailing(BuildContext context, bool isAdmin) {
    if (isAdmin) {
      return PopupMenuButton(
        icon: const Icon(Icons.more_vert),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        itemBuilder: (context) {
          return <PopupMenuItem>[
            PopupMenuItem(
              value: 0,
              child: Row(
                children: [
                  Icon(Icons.edit, size: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text("Edit Produce", style: Theme.of(context).textTheme.bodyText1),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: Row(
                children: [
                  Icon(
                    Icons.delete,
                    size: 20,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      "Delete Produce",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  ),
                ],
              ),
            )
          ];
        },
        onSelected: (value) {},
      );
    } else {
      return null;
    }
  }

  Function()? resolveSecondTrailingOnPressed(bool isAdmin) {
    if (isAdmin) return () {};
    return null;
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
