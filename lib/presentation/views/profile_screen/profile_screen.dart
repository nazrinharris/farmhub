// ignore_for_file: prefer_const_constructors

import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/cards.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/custom_cupertino_sliver_refresh_control.dart';
import 'package:farmhub/presentation/views/profile_screen/profile_screen_cubit/profile_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

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

          return BlocListener<GlobalUICubit, GlobalUIState>(
            listener: (context, state) {
              if (state.props.shouldRefreshProfile) {
                context.read<ProfileScreenCubit>().refresh();
                context.read<GlobalUICubit>().setShouldRefreshProfile(false);
              }
            },
            child: Scaffold(
                extendBody: true,
                extendBodyBehindAppBar: true,
                appBar: DefaultAppBar(
                  leadingIcon: Icon(Icons.arrow_back),
                  leadingOnPressed: () {
                    Navigator.of(context).pop();
                  },
                  trailingIcon: Icon(Icons.edit_outlined),
                  trailingOnPressed: () {
                    Navigator.of(context).pushNamed('/edit_profile');
                  },
                  secondTrailingIcon: Icon(Icons.settings_outlined),
                  secondTrailingOnPressed: () {
                    Navigator.of(context).pushNamed('/settings');
                  },
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
                )),
          );
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
    final INetworkInfo networkInfo = locator();

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          UITopPadding(),
          FutureBuilder(
            future: networkInfo.isConnected,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final result = snapshot.data as bool;

                if (!result) {
                  return ErrorNoInternetCard(
                    verticalMargin: 24,
                    horizontalMargin: 24,
                  );
                } else {
                  return UICustomVertical(50);
                }
              } else {
                return UICustomVertical(50);
              }
            },
          ),
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
                        fontSize: 30,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, right: 54),
                child: Text(
                  farmhubUser.username,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 30,
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
