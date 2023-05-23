// ignore_for_file: deprecated_member_use

import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';

class ErrorToast extends StatelessWidget {
  final String? errorMessage;

  const ErrorToast({Key? key, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.only(left: 34, right: 34, top: 14, bottom: 24),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 11,
              offset: const Offset(3, 4),
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error_outline, size: 24, color: Theme.of(context).colorScheme.onError),
          const UIVerticalSpace14(),
          Text(
            "Uh oh, something went wrong.",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.onError),
          ),
          if (errorMessage != null)
            Container(
              padding: const EdgeInsets.only(top: 14),
              alignment: Alignment.center,
              child: Text(
                errorMessage!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Theme.of(context).colorScheme.onError),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}

class SuccessToast extends StatelessWidget {
  final String? title;
  final String? content;

  const SuccessToast({Key? key, this.content, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.only(left: 34, right: 34, top: 14, bottom: 24),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryVariant,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 11,
              offset: const Offset(3, 4),
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check_circle_outline, size: 24, color: Theme.of(context).colorScheme.primary),
          const UIVerticalSpace14(),
          Text(
            title ?? "Uh oh, something went wrong.",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          if (content != null)
            Container(
              padding: const EdgeInsets.only(top: 14),
              alignment: Alignment.center,
              child: Text(
                content!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
