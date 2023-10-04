// ignore_for_file: deprecated_member_use

import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/util/misc.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/features/produce_manager/data/repository/produce_manager_helpers.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../core/auth/auth_cubit/auth_cubit.dart';

Widget determineErrorCard(String errorCode) {
  if (errorCode == ERROR_NO_INTERNET_CONNECTION) {
    return const ErrorNoInternetCard();
  } else {
    return const SizedBox.shrink();
  }
}

class ErrorNoInternetCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;

  const ErrorNoInternetCard({Key? key, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
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

class ErrorCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Icon icon;
  final String mainContent;
  final String? subContent;

  const ErrorCard(
      {Key? key, this.margin, required this.icon, required this.mainContent, this.subContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.error.withOpacity(0.15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const UIHorizontalSpace14(),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainContent,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.start,
                ),
                if (subContent != null) const UIVerticalSpace14(),
                if (subContent != null)
                  Text(
                    subContent!,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Theme.of(context).colorScheme.error,
                          fontSize: 13,
                        ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CurrentPriceCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Produce produce;

  const CurrentPriceCard(
    this.produce, {
    Key? key,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (produce.previousProducePrice["price"] == null) {
      return GreyCard(
        "Current Price",
        roundNum(produce.currentProducePrice["price"], 2),
        smallTitle:
            produce.currentProducePrice["priceDate"].toString().replaceAll(RegExp("-"), "/"),
      );
    }

    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: resolveBackground(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Current Price",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: resolveTextColor(context),
                    ),
              ),
              const UICustomHorizontal(6),
              Text(
                produce.currentProducePrice["priceDate"].toString().replaceAll(RegExp("-"), "/"),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: resolveCaptionTextColor(context),
                      fontSize: 13,
                    ),
              ),
            ],
          ),
          const UIVerticalSpace14(),
          Text(
            "RM${roundNum(produce.currentProducePrice["price"], 2)}",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: resolveTextColor(context),
                ),
          ),
        ],
      ),
    );
  }

  Color resolveCaptionTextColor(BuildContext context) {
    final bool isNegative = resolveIsNegative(produce);

    if (isNegative) {
      return Theme.of(context).colorScheme.onError.withOpacity(0.5);
    } else {
      return Theme.of(context).colorScheme.primary.withOpacity(0.5);
    }
  }

  Color resolveTextColor(BuildContext context) {
    final bool isNegative = resolveIsNegative(produce);

    if (isNegative) {
      return Theme.of(context).colorScheme.onError;
    } else {
      return Theme.of(context).colorScheme.primary;
    }
  }

  Color resolveBackground(BuildContext context) {
    final bool isNegative = resolveIsNegative(produce);

    if (isNegative) {
      return Theme.of(context).colorScheme.error.withOpacity(0.15);
    } else {
      return Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.15);
    }
  }
}

class PreviousPriceCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Produce produce;

  const PreviousPriceCard(this.produce, {Key? key, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (produce.previousProducePrice["price"] == null) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 14),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey.withOpacity(0.15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Previous Price", style: Theme.of(context).textTheme.bodyText1),
              const UICustomHorizontal(6),
              Text(
                produce.previousProducePrice["priceDate"].toString().replaceAll(RegExp("-"), "/"),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                      fontSize: 13,
                    ),
              ),
            ],
          ),
          const UIVerticalSpace14(),
          Text(
            "RM${produce.previousProducePrice["price"]}",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}

class GreyCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final String title;
  final String? smallTitle;
  final num price;

  const GreyCard(this.title, this.price, {Key? key, this.margin, this.smallTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 14),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey.withOpacity(0.15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(title, style: Theme.of(context).textTheme.bodyText1),
              const UICustomHorizontal(6),
              if (smallTitle != null)
                Text(
                  smallTitle!,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                        fontSize: 13,
                      ),
                ),
            ],
          ),
          const UIVerticalSpace14(),
          Text(
            "RM$price",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}

class WarningCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Icon? icon;
  final String mainContent;
  final String? subContent;

  const WarningCard({
    Key? key,
    this.margin,
    this.icon,
    required this.mainContent,
    this.subContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).extension<ExtendedColors>()!.warning!.withOpacity(0.4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) icon!,
          if (icon != null) const UIHorizontalSpace14(),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainContent,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context).extension<ExtendedColors>()!.onWarning!,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.start,
                ),
                if (subContent != null) const UIVerticalSpace14(),
                if (subContent != null)
                  Text(
                    subContent!,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Theme.of(context).extension<ExtendedColors>()!.onWarning!,
                          fontSize: 13,
                        ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProduceWarningCard extends StatelessWidget {
  final Produce produce;
  final EdgeInsetsGeometry? margin;

  const ProduceWarningCard(
    this.produce, {
    Key? key,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ExtendedColors colors = Theme.of(context).extension<ExtendedColors>()!;

    return Container(
      margin: margin,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colors.warning,
      ),
      child: Text(
        "There is only one price for ${produce.produceName}",
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: colors.onWarning,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

enum PhoneAuthCardType { login, register }

class PhoneAuthCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final PhoneAuthCardType type;

  const PhoneAuthCard({
    this.margin,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 14),
      child: Material(
        elevation: 7,
        shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.18),
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).extension<ExtendedColors>()!.onBackgroundPale,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            resolveOnTap(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.phone),
                    const UIHorizontalSpace14(),
                    Flexible(
                      child: Column(
                        children: [
                          Text(
                            returnText(),
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_right_alt),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String returnText() {
    if (type == PhoneAuthCardType.login) {
      return "Login with Phone Number";
    } else if (type == PhoneAuthCardType.register) {
      return "Register with Phone Number";
    } else {
      return "Error";
    }
  }

  void resolveOnTap(BuildContext context) {
    FocusScope.of(context).unfocus();
    Navigator.of(context).pushNamed("/verify_phone");
  }
}

class GoogleAuthCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final AuthCubit authCubit;
  final String? content;

  const GoogleAuthCard({
    this.margin,
    required this.authCubit,
    this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 14),
      child: Material(
        elevation: 7,
        shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.18),
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).extension<ExtendedColors>()!.white,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            resolveOnTap(context, authCubit);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Ionicons.logo_google),
                    const UIHorizontalSpace14(),
                    Flexible(
                      child: Column(
                        children: [
                          Text(
                            content ?? "Sign in with Google",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_right_alt),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void resolveOnTap(BuildContext context, AuthCubit authCubit) async {
    FocusScope.of(context).unfocus();
    await authCubit.signInWithGoogle();
  }
}

class AppleAuthCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final AuthCubit authCubit;
  final String? content;

  const AppleAuthCard({
    this.margin,
    required this.authCubit,
    this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 14),
      child: Material(
        elevation: 7,
        shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.18),
        borderRadius: BorderRadius.circular(16),
        color: Colors.black.withOpacity(0.85),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            resolveOnTap(context, authCubit);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Ionicons.logo_apple, color: Colors.white),
                    const UIHorizontalSpace14(),
                    Flexible(
                      child: Column(
                        children: [
                          Text(
                            content ?? "Sign in with Apple",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_right_alt, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void resolveOnTap(BuildContext context, AuthCubit authCubit) async {
    FocusScope.of(context).unfocus();
    await authCubit.signInWithApple();
  }
}
