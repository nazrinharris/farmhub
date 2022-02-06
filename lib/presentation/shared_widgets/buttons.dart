import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';

/// Guides and Don'ts when using PrimaryButton
///
/// Don'ts
///
/// 1. Do not use specify both a content and a child, choose either.
///
class PrimaryButton extends StatelessWidget {
  final String? content;
  final Widget? child;
  final double? width;
  final Function()? onPressed;
  final Icon? buttonIcon;
  final double? horizontalPadding;
  final double? verticalPadding;

  const PrimaryButton({
    Key? key,
    this.content,
    this.child,
    this.onPressed,
    this.buttonIcon,
    this.width,
    this.horizontalPadding,
    this.verticalPadding,
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

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Container(
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
