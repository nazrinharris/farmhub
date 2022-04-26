import 'package:flutter/material.dart';

// TODO: Make proper layout for centering the title when there is only a trailing icon.
// The current workaround is by specifying a dummy leading icon and setting its color to
// transparent. Also do not specify a method for the leading icon to avoid inkwells

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function()? trailingOnPressed;
  final Icon? trailingIcon;
  final Function()? leadingOnPressed;
  final Icon? leadingIcon;
  final String? title;

  const DefaultAppBar({
    Key? key,
    this.trailingOnPressed,
    this.trailingIcon,
    this.leadingOnPressed,
    this.leadingIcon,
    this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.maxFinite, 80),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
            child: Container(
              color: Theme.of(context).backgroundColor,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                constraints: const BoxConstraints.expand(height: 80),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).backgroundColor,
                      Theme.of(context).backgroundColor.withOpacity(0.0),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  resolveTrailing(),
                  resolveTitle(context),
                  resolveLeading(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget resolveTrailing() {
    if (trailingIcon != null) {
      return IconButton(
        onPressed: trailingOnPressed,
        icon: trailingIcon!,
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget resolveTitle(BuildContext context) {
    if (title != null) {
      return Text(
        title!,
        style: Theme.of(context).textTheme.bodyText1,
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget resolveLeading() {
    if (leadingIcon != null) {
      return IconButton(
        onPressed: leadingOnPressed,
        icon: leadingIcon!,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
