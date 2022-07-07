import 'package:farmhub/core/constants/app_const.dart';
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
  const ErrorNoInternetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
