import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';

/// Guides and Don'ts when using PrimaryButton
///
/// Don'ts
///
/// 1. Do not specify both a content and a child, choose either.
///
class PrimaryButton extends StatelessWidget {
  final String? content;
  final Widget? child;
  final double? width;
  final Function()? onPressed;
  final Icon? buttonIcon;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;

  const PrimaryButton({
    Key? key,
    this.content,
    this.child,
    this.onPressed,
    this.buttonIcon,
    this.width,
    this.horizontalPadding,
    this.verticalPadding,
    this.backgroundColor,
  })  : assert(content == null || child == null,
            "You cannot specify both a [content] and a [child], choose either."),
        assert(content != null || child != null,
            "You must specify at least either a [content] or a [child]"),
        super(key: key);

  Widget _resolveChild(BuildContext context) {
    if (child != null) {
      // When child is specified and content is unspecified.
      if (buttonIcon != null) {
        // When child and buttonIcon is specified
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            child!,
            const UIHorizontalSpace14(),
            buttonIcon!,
          ],
        );
      } else {
        // When only child is specified
        return child!;
      }
    } else if (content != null) {
      /// When content is specified and child is unspecified.
      if (buttonIcon != null) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              content!,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            ),
            const UIHorizontalSpace14(),
            buttonIcon!,
          ],
        );
      } else {
        return Text(
          content!,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          ),
        );
      }
    } else {
      throw UnimplementedError(
          "Error in PrimaryButton, It may be because both [content] and [child] is unspecified.");
    }
  }

  Color? _resolveBackgroundColor(BuildContext context) {
    if (backgroundColor != null) {
      return backgroundColor;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(_resolveBackgroundColor(context)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Container(
        height: 46,
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? 14,
          horizontal: horizontalPadding ?? 34,
        ),
        alignment: Alignment.center,
        width: width,
        child: _resolveChild(context),
      ),
    );
  }
}

enum SecondaryButtonType { normal, red, filled }

class SecondaryButton extends StatelessWidget {
  final String? content;
  final Widget? child;
  final double? width;
  final double? height;
  final Function()? onPressed;
  final Icon? buttonIcon;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;
  final SecondaryButtonType? type;

  const SecondaryButton({
    Key? key,
    this.content,
    this.child,
    this.onPressed,
    this.buttonIcon,
    this.width,
    this.height,
    this.horizontalPadding,
    this.verticalPadding,
    this.backgroundColor,
    this.type = SecondaryButtonType.normal,
  })  : assert(content == null || child == null,
            "You cannot specify both a [content] and a [child], choose either."),
        assert(content != null || child != null,
            "You must specify at least either a [content] or a [child]"),
        super(key: key);

  Widget _resolveChild(BuildContext context) {
    if (child != null) {
      // When child is specified and content is unspecified.
      if (buttonIcon != null) {
        // When child and buttonIcon is specified
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            child!,
            const UIHorizontalSpace14(),
            buttonIcon!,
          ],
        );
      } else {
        // When only child is specified
        return child!;
      }
    } else if (content != null) {
      /// When content is specified and child is unspecified.
      if (buttonIcon != null) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              content!,
              style: TextStyle(
                color: _resolveTextColor(context),
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            ),
            const UIHorizontalSpace6(),
            buttonIcon!,
          ],
        );
      } else {
        return Text(
          content!,
          style: TextStyle(
            color: _resolveTextColor(context),
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          ),
        );
      }
    } else {
      throw UnimplementedError(
          "Error in SecondaryButton, It may be because both [content] and [child] is unspecified.");
    }
  }

  Color? _resolveTextColor(BuildContext context) {
    if (type == SecondaryButtonType.normal) {
      return Theme.of(context).colorScheme.primary;
    } else if (type == SecondaryButtonType.red) {
      return Theme.of(context).colorScheme.error;
    } else {
      return null;
    }
  }

  Color? _resolveBackgroundColor(BuildContext context) {
    if (backgroundColor != null) {
      return backgroundColor;
    } else if (type == SecondaryButtonType.normal) {
      return null;
    } else if (type == SecondaryButtonType.red) {
      return Theme.of(context).colorScheme.error.withOpacity(0.15);
    } else if (type == SecondaryButtonType.filled) {
      return Theme.of(context).colorScheme.primary.withOpacity(0.09);
    } else {
      return null;
    }
  }

  BorderSide _resolveBorderSide(BuildContext context) {
    if (type == SecondaryButtonType.normal) {
      return BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.30));
    } else if (type == SecondaryButtonType.red) {
      return BorderSide(color: Theme.of(context).colorScheme.error.withOpacity(0.30));
    } else {
      return BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.30));
    }
  }

  Color _resolvePrimary(BuildContext context) {
    if (type == SecondaryButtonType.normal) {
      return Theme.of(context).colorScheme.primary;
    } else if (type == SecondaryButtonType.red) {
      return Theme.of(context).colorScheme.error;
    } else {
      return Theme.of(context).colorScheme.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          primary: _resolvePrimary(context),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          side: _resolveBorderSide(context),
          backgroundColor: _resolveBackgroundColor(context)),
      child: Container(
        height: height ?? 46,
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? 14,
          horizontal: horizontalPadding ?? 34,
        ),
        alignment: Alignment.center,
        width: width,
        child: _resolveChild(context),
      ),
    );
  }
}

class ThirdPartySignUpButton extends StatelessWidget {
  final Function()? onPressed;
  final String content;
  final double width;

  const ThirdPartySignUpButton({
    Key? key,
    required this.content,
    required this.onPressed,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(const Color(0xff707070).withOpacity(0.5)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)))),
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.center,
        height: 36,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.golf_course,
              color: Colors.blue,
              size: 16,
            ),
            const UIHorizontalSpace14(),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff707070),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
