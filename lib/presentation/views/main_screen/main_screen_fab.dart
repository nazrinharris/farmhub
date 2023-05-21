// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../core/auth/global_auth_cubit/global_auth_cubit.dart';
import '../../../core/util/farmhub_icons.dart';

class MainScreenFAB extends StatefulWidget {
  const MainScreenFAB({Key? key}) : super(key: key);

  @override
  State<MainScreenFAB> createState() => _MainScreenFABState();
}

class _MainScreenFABState extends State<MainScreenFAB> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalAuthCubit, GlobalAuthState>(
      builder: (context, state) {
        final bool isAdmin = state.isAdmin ?? false;

        return isAdmin ? const AdminFAB() : const SizedBox.shrink();
      },
    );
  }
}

class AdminFAB extends StatelessWidget {
  const AdminFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      useRotationAnimation: false,
      overlayColor: Colors.black,
      overlayOpacity: 0.85,
      spacing: 24,
      spaceBetweenChildren: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      backgroundColor: Theme.of(context).colorScheme.primary,
      activeBackgroundColor: Theme.of(context).colorScheme.error,
      icon: Icons.add,
      activeIcon: Icons.close,
      iconTheme: const IconThemeData(color: Colors.white),
      children: [
        SpeedDialChild(
          onTap: () => Navigator.of(context).pushNamed('/create_produce'),
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: const Icon(
            FarmhubIcons.farmhub_corn_icon,
            color: Colors.white,
            size: 20,
          ),
          labelWidget: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              "Create new Produce",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
            ),
          ),
        ),
        SpeedDialChild(
          onTap: () {
            debugPrint("Pressed");
            Navigator.of(context).pushNamed('/add_new_price');
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: const Icon(
            Icons.price_change,
            color: Colors.white,
          ),
          labelWidget: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              "Add new Price",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
