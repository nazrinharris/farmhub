import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/util/farmhub_icons.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/views/user_management_screens/cubit/user_management_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../register_screen/bloc/register_screen_bloc.dart';

class ChooseUserTypeScreen extends StatelessWidget {
  const ChooseUserTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserManagementCubit(authRepository: locator()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: DefaultAppBar(
          leadingIcon: Icon(Icons.close),
          leadingOnPressed: () {
            Navigator.of(context).pop();
          },
        ),
        body: SafeArea(
          top: false,
          child: ListView(
            physics: DefaultScrollPhysics,
            children: [
              const ChooseUserType(),
              const UICustomVertical(80),
              const AccountTypeChooser(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChooseUserType extends StatelessWidget {
  const ChooseUserType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tell us more about you.",
            style: Theme.of(context).textTheme.headline1,
          ),
          const UICustomVertical(14),
          Text(
            "If you're not sure, just choose regular!",
            style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class AccountTypeChooser extends StatelessWidget {
  const AccountTypeChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = locator<GlobalAuthCubit>().state.farmhubUser!;

    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PrimaryButton(
            content: "Farmer",
            buttonIcon: Icon(FarmhubIcons.farmhub_corn_icon, size: 18),
            onPressed: () async {
              await context.read<UserManagementCubit>().chooseUserType(
                    uid: user.uid,
                    userType: UserType.farmer,
                    context: context,
                  );
            },
            width: 200,
          ),
          const UIVerticalSpace14(),
          PrimaryButton(
            content: "Business",
            buttonIcon: Icon(Icons.store, size: 21),
            onPressed: () async {
              await context.read<UserManagementCubit>().chooseUserType(
                    uid: user.uid,
                    userType: UserType.business,
                    context: context,
                  );
            },
            width: 200,
          ),
          const UIVerticalSpace14(),
          PrimaryButton(
            content: "Regular",
            buttonIcon: Icon(Icons.face, size: 21),
            onPressed: () async {
              await context.read<UserManagementCubit>().chooseUserType(
                    uid: user.uid,
                    userType: UserType.regular,
                    context: context,
                  );
            },
            width: 200,
          ),
          const UICustomVertical(34),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54),
            child: Text(
              "This can be changed at any time, so don't worry about it!",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
