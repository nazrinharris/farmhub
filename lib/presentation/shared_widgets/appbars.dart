import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';

// TODO: Make proper layout for centering the title when there is only a trailing icon.
// The current workaround is by specifying a dummy leading icon and setting its color to
// transparent. Also do not specify a method for the leading icon to avoid inkwells

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Icon? leadingIcon;
  final Function()? leadingOnPressed;
  final Icon? secondTrailingIcon;
  final Function()? secondTrailingOnPressed;
  final Widget? secondTrailingChild;
  final Icon? trailingIcon;
  final Function()? trailingOnPressed;
  final String? title;
  final List<Color>? backgroundColors;

  const DefaultAppBar({
    Key? key,
    this.leadingOnPressed,
    this.leadingIcon,
    this.secondTrailingIcon,
    this.secondTrailingOnPressed,
    this.trailingIcon,
    this.trailingOnPressed,
    this.title,
    this.backgroundColors,
    this.secondTrailingChild,
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
                      colors: resolveBackgroundColors(context)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  resolveLeading(),
                  resolveTitle(context),
                  resolveTrailing(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget resolveTrailing() {
    if (trailingIcon != null && secondTrailingIcon == null && secondTrailingChild == null) {
      return IconButton(onPressed: trailingOnPressed, icon: trailingIcon!);
    } else if (trailingIcon != null && secondTrailingIcon != null) {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: trailingOnPressed, icon: trailingIcon!),
            IconButton(onPressed: secondTrailingOnPressed, icon: secondTrailingIcon!),
          ],
        ),
      );
    } else if (trailingIcon != null && secondTrailingChild != null) {
      return Row(
        children: [
          IconButton(onPressed: trailingOnPressed, icon: trailingIcon!),
          secondTrailingChild!,
        ],
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

  List<Color> resolveBackgroundColors(BuildContext context) {
    if (backgroundColors == null) {
      return [
        Theme.of(context).backgroundColor,
        Theme.of(context).backgroundColor.withOpacity(0.0),
      ];
    } else {
      return backgroundColors!;
    }
  }
}
