import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';

Widget determineErrorCard(String errorCode) {
  if (errorCode == ERROR_NO_INTERNET_CONNECTION) {
    return const ErrorNoInternetCard();
  } else {
    return const SizedBox.shrink();
  }
}

class ErrorNoInternetCard extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;

  const ErrorNoInternetCard({Key? key, this.top, this.bottom, this.right, this.left})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: top ?? 0,
        bottom: bottom ?? 0,
        right: right ?? 0,
        left: left ?? 0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.error.withOpacity(0.15),
      ),
      child: Row(
        children: [
          Icon(Icons.wifi_off, color: Theme.of(context).colorScheme.error),
          const UIHorizontalSpace14(),
          Flexible(
            child: Text(
              "You are not connected to the internet",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
