import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String? content;
  final Widget child;
  final double? width;
  final Function()? onPressed;
  final Icon? buttonIcon;
  final double? horizontalPadding;
  final double? verticalPadding;

  const PrimaryButton({
    Key? key,
    this.content,
    required this.child,
    this.onPressed,
    this.buttonIcon,
    this.width,
    this.horizontalPadding,
    this.verticalPadding,
  }) : super(key: key);

  Widget _resolveChild(BuildContext context) {
    if (buttonIcon != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child,
          const UIHorizontalSpace14(),
          buttonIcon!,
        ],
      );
    } else {
      return child;
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
