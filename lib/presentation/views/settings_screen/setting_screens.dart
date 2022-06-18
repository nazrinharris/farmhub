// ignore_for_file: prefer_const_constructors
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Settings",
        leadingIcon: const Icon(Icons.arrow_back),
        leadingOnPressed: () {
          Navigator.of(context).pop();
        },
        trailingIcon: const Icon(Icons.error, color: Colors.transparent),
      ),
      body: CustomScrollView(
        physics: DefaultScrollPhysics,
        slivers: [
          SliverSettingsBody(),
        ],
      ),
    );
  }
}

class SliverSettingsBody extends StatelessWidget {
  const SliverSettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: EdgeInsets.only(left: 14, right: 14),
            child: Column(
              children: [
                SettingsHeader("Account"),
                SettingsListCard(
                  content: "Change Password",
                  icon: Icon(Icons.password_outlined),
                  isTop: true,
                ),
                SettingsListCard(
                  content: "Sign out",
                  icon: Icon(Icons.logout_outlined),
                ),
                SettingsHeader("Others"),
                SettingsListCard(
                  content: "Terms and Conditions",
                  icon: Icon(Icons.policy_outlined),
                  isTop: true,
                ),
                SettingsListCard(
                  content: "About Farmhub",
                  icon: Icon(Icons.eco_outlined),
                ),
                SettingsHeader("Debug"),
                SettingsListCard(
                  content: "Go to Navigation",
                  icon: Icon(Icons.tab_unselected),
                  isTop: true,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    Navigator.pushReplacementNamed(context, "/navigate");
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/// [index] is only used to decide if the top border should be rendered or not.
/// [0] If the top border should be drawn and all other numbers will not draw it.
class SettingsListCard extends StatelessWidget {
  final String content;
  final Function()? onTap;
  final Icon icon;
  bool? isTop;

  SettingsListCard({
    Key? key,
    this.onTap,
    this.isTop,
    required this.content,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onLongPress: () {
          HapticFeedback.heavyImpact();
        },
        onTap: onTap,
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 14),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            decoration: BoxDecoration(
              border: Border(
                top: _resolveTop(context, isTop ??= false),
                bottom: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.14)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                icon,
                UIHorizontalSpace14(),
                Text(content, style: Theme.of(context).textTheme.bodyText1),
              ],
            )),
      ),
    );
  }

  BorderSide _resolveTop(BuildContext context, bool isTop) {
    if (isTop) {
      return BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.14));
    } else {
      return BorderSide.none;
    }
  }
}

class SettingsHeader extends StatelessWidget {
  final String content;

  const SettingsHeader(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 14, left: 14),
      alignment: Alignment.centerLeft,
      child: Text(
        content,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
