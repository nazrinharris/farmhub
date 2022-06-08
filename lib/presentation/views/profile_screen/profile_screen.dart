// ignore_for_file: prefer_const_constructors

import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/custom_cupertino_sliver_refresh_control.dart';
import 'package:farmhub/presentation/views/profile_screen/profile_screen_cubit/profile_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileScreenCubit(locator()),
      child: BlocBuilder<GlobalAuthCubit, GlobalAuthState>(
        builder: (context, state) {
          // TODO: Maybe allow for non-registered users!
          final FarmhubUser user = state.farmhubUser ??
              FarmhubUser(
                uid: "xxxxxx",
                email: "-",
                username: "Guest",
                createdAt: "-",
                produceFavoritesList: [],
              );

          return Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              appBar: DefaultAppBar(
                leadingIcon: Icon(Icons.arrow_back),
                leadingOnPressed: () {
                  Navigator.of(context).pop();
                },
                trailingIcon: Icon(Icons.edit_outlined),
                trailingOnPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushReplacementNamed(context, "/navigate");
                  Navigator.pop(context);
                },
                secondTrailingIcon: Icon(Icons.settings_outlined),
                secondTrailingOnPressed: () {},
              ),
              body: CustomScrollView(
                physics: DefaultScrollPhysics,
                slivers: [
                  CustomCupertinoSliverRefreshControl(
                    onRefresh: () async {
                      await context.read<GlobalAuthCubit>().updateGlobalAuthCubit();
                    },
                  ),
                  SliverProfileHeader(user),
                  SliverProfileContent(user),
                ],
              ));
        },
      ),
    );
  }
}

class SliverProfileHeader extends StatelessWidget {
  final FarmhubUser farmhubUser;

  const SliverProfileHeader(this.farmhubUser, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          UITopPadding(),
          UICustomVertical(50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, bottom: 24),
                child: Hero(
                  tag: Key("profile_picture"),
                  child: Container(
                    height: 74,
                    width: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Hello,",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 40,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  farmhubUser.username,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 40,
                      ),
                ),
              ),
            ],
          ),
          UICustomVertical(24),
          UIBorder(margin: EdgeInsets.symmetric(horizontal: 24), opacity: 0.05),
          UICustomVertical(54),
        ],
      ),
    );
  }
}

class SliverProfileContent extends StatelessWidget {
  final FarmhubUser user;

  const SliverProfileContent(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate.fixed([
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyText2("Your Information"),
              UIVerticalSpace14(),
              UIBorder(margin: EdgeInsets.zero, opacity: 0.05),
              UIVerticalSpace24(),
              Text(
                "Username",
                style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 16),
              ),
              UIVerticalSpace6(),
              Text(
                user.username,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20),
              ),
              UIVerticalSpace24(),
              Text(
                "Email",
                style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 16),
              ),
              UIVerticalSpace6(),
              Text(
                user.email,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20),
              ),
              UIVerticalSpace24(),
              Text(
                "Joined at",
                style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 16),
              ),
              UIVerticalSpace6(),
              Text(
                user.createdAt,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
