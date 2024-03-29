// ignore_for_file: deprecated_member_use

import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:farmhub/core/util/farmhub_icons.dart';
import 'package:farmhub/core/util/printer.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/cards.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/custom_cupertino_sliver_refresh_control.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/produce_dialog_cubit/produce_dialog_cubit.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:farmhub/presentation/views/profile_screen/profile_screen_cubit/profile_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ndialog/ndialog.dart';

import '../../../features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProfileScreenCubit(locator()),
        ),
        BlocProvider(
          create: (context) => ProduceDialogCubit(
            locator(),
            locator(),
            locator(),
            farmShopManagerRepository: locator(),
          ),
        )
      ],
      child: BlocBuilder<GlobalAuthCubit, GlobalAuthState>(
        builder: (context, state) {
          final FarmhubUser user = state.farmhubUser ??
              FarmhubUser(
                uid: "xxxxxx",
                email: "-",
                username: "Guest",
                createdAt: "-",
                produceFavoritesList: [],
                userType: UserType.regular,
              );

          debugPrintUserData("FarmhubUser in GlobalAuthCubit:", user);

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
                  leadingIcon: const Icon(Icons.arrow_back),
                  leadingOnPressed: () {
                    Navigator.of(context).pop();
                  },
                  trailingIcon: const Icon(Icons.edit_outlined),
                  trailingOnPressed: () {
                    Navigator.of(context).pushNamed('/edit_profile', arguments: user);
                  },
                  secondTrailingIcon: const Icon(Icons.settings_outlined),
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
      delegate: SliverChildListDelegate.fixed(
        [
          const UITopPadding(),
          ErrorNoInternetSwitcher(networkInfo: networkInfo),
          const UIVerticalSpace14(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Hello,",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 30,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 44),
                child: Text(
                  farmhubUser.username,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 30,
                      ),
                ),
              ),
            ],
          ),
          const UIVerticalSpace24(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: const Key("profile_picture"),
                    child: SizedBox(
                      height: 104,
                      width: 104,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color:
                                  Theme.of(context).extension<ExtendedColors>()!.onBackgroundPale!,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          SvgPicture.asset("assets/images/svg/flowah-minimal-transparent.svg"),
                        ],
                      ),
                    ),
                  ),
                  const UIVerticalSpace14(),
                  UserTypeCard(userType: farmhubUser.userType),
                ],
              ),
            ],
          ),
          const UICustomVertical(24),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Email",
                style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 12),
              ),
              const UIVerticalSpace6(),
              Text(
                farmhubUser.email ?? "Email not set",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
                overflow: TextOverflow.fade,
              ),
              const UIVerticalSpace14(),
              Text(
                "Joined at",
                style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 12),
              ),
              const UIVerticalSpace6(),
              Text(
                farmhubUser.createdAt,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
              ),
            ],
          ),
          const UIVerticalSpace24(),
          const UIBorder(margin: EdgeInsets.symmetric(horizontal: 24), opacity: 0.2),
          const UICustomVertical(24),
        ],
      ),
    );
  }
}

class ErrorNoInternetSwitcher extends StatelessWidget {
  const ErrorNoInternetSwitcher({
    Key? key,
    required this.networkInfo,
  }) : super(key: key);

  final INetworkInfo networkInfo;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: networkInfo.isConnected,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final result = snapshot.data as bool;

          if (!result) {
            return const ErrorNoInternetCard(margin: EdgeInsets.all(24));
          } else {
            return const UICustomVertical(20);
          }
        } else {
          return const UICustomVertical(20);
        }
      },
    );
  }
}

class UserTypeCard extends StatelessWidget {
  final UserType userType;

  const UserTypeCard({Key? key, required this.userType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("Yes");
      },
      child: chooseType(context),
    );
  }

  Widget chooseType(BuildContext context) {
    if (userType == UserType.regular) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(
          "Regular",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
        ),
      );
    } else if (userType == UserType.business) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
          color: Theme.of(context).extension<ExtendedColors>()!.paleBlue,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text("Business", style: Theme.of(context).textTheme.bodyText1!),
      );
    } else if (userType == UserType.farmer) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
          color: Theme.of(context).extension<ExtendedColors>()!.paleYellow,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text("Farmer", style: Theme.of(context).textTheme.bodyText1!),
      );
    } else if (userType == UserType.admin) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
          color: Theme.of(context).extension<ExtendedColors>()!.palePurple,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text("Admin", style: Theme.of(context).textTheme.bodyText1!),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

class SliverProfileContent extends StatelessWidget {
  final FarmhubUser user;

  const SliverProfileContent(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate.fixed([
        if (user.userType == UserType.regular || user.userType == UserType.admin)
          const RegularProfileContent(),
        if (user.userType == UserType.business) BusinessProfileContent(user as FarmhubUserBusiness),
        if (user.userType == UserType.farmer) FarmerProfileContent(user as FarmhubUserFarmer),
        const UICustomVertical(200),
      ]),
    );
  }
}

class RegularProfileContent extends StatelessWidget {
  const RegularProfileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 44),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "Not much to see here...",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class BusinessProfileContent extends StatelessWidget {
  final FarmhubUserBusiness farmhubUser;

  const BusinessProfileContent(this.farmhubUser, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Farm"),
          const UIVerticalSpace14(),
          Align(
            alignment: Alignment.center,
            child: FarmList(farmhubUser.userFarms),
          ),
          const UICustomVertical(64),
          const Text("Shop"),
          const UIVerticalSpace14(),
          Align(
            alignment: Alignment.center,
            child: ShopList(farmhubUser.userShops),
          ),
        ],
      ),
    );
  }
}

class FarmerProfileContent extends StatelessWidget {
  final FarmhubUserFarmer farmhubUser;

  const FarmerProfileContent(this.farmhubUser, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text("Farm"),
          const UIVerticalSpace14(),
          Align(
            alignment: Alignment.center,
            child: FarmList(farmhubUser.userFarms),
          ),
          const UICustomVertical(64),
          const Text("Shop"),
          const UIVerticalSpace14(),
          Align(
            alignment: Alignment.center,
            child: ShopList(farmhubUser.userShops),
          ),
        ],
      ),
    );
  }
}

class FarmList extends StatelessWidget {
  final List<Farm> farmList;

  const FarmList(this.farmList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (farmList.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "You don't have a farm..",
            style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14),
          ),
          const UIVerticalSpace14(),
          SecondaryButton(
            content: "Create a Farm",
            onPressed: () {
              Navigator.of(context).pushNamed("/create_farm");
            },
          ),
        ],
      );
    } else {
      return FarmCard(farmList: farmList);
    }
  }
}

class FarmCard extends StatelessWidget {
  const FarmCard({
    Key? key,
    required this.farmList,
  }) : super(key: key);

  final List<Farm> farmList;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      color: Theme.of(context).extension<ExtendedColors>()!.onBackgroundPale,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: () {},
        onLongPress: () async {
          HapticFeedback.heavyImpact();
          await NDialog(
            dialogStyle: DialogStyle(
              titleDivider: true,
              backgroundColor: Theme.of(context).colorScheme.background,
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Text(
                "Umm, we're sorry.",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            content: Padding(
              padding: const EdgeInsets.only(top: 14, bottom: 24, right: 24),
              child: Text(
                "This feature is still being developed!",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ).show(context, transitionType: DialogTransitionType.Bubble);
        },
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(FarmhubIcons.farmhub_corn_icon, size: 24),
                    ),
                    const UIVerticalSpace14(),
                    Text(
                      farmList[0].farmName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const UIVerticalSpace6(),
                    Text(
                      "${farmList[0].address.addressLine},",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                          ),
                    ),
                    Text(
                      "${farmList[0].address.city},",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                          ),
                    ),
                    Text(
                      "${farmList[0].address.state}.",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/edit_farm", arguments: farmList[0]);
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                      onPressed: () {
                        final dialog = returnDeleteFarmDialog(context, farmList[0]);

                        dialog.show(context, transitionType: DialogTransitionType.Bubble);
                      },
                      icon: Icon(Icons.delete, color: Theme.of(context).colorScheme.error)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopList extends StatelessWidget {
  final List<Shop> shopList;

  const ShopList(this.shopList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (shopList.isEmpty) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "You don't have a shop..",
            style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14),
          ),
          const UIVerticalSpace14(),
          SecondaryButton(
            content: "Create a Shop",
            onPressed: () {
              Navigator.of(context).pushNamed("/create_shop");
            },
          ),
        ],
      );
    } else {
      return ShopCard(shopList: shopList);
    }
  }
}

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    required this.shopList,
  }) : super(key: key);

  final List<Shop> shopList;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      color: Theme.of(context).extension<ExtendedColors>()!.evenPalerPurple,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: () {},
        onLongPress: () async {
          HapticFeedback.heavyImpact();
          await NDialog(
            dialogStyle: DialogStyle(
              titleDivider: true,
              backgroundColor: Theme.of(context).colorScheme.background,
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Text(
                "Umm, we're sorry.",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            content: Padding(
              padding: const EdgeInsets.only(top: 14, bottom: 24, right: 24),
              child: Text(
                "This feature is still being developed!",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ).show(context, transitionType: DialogTransitionType.Bubble);
        },
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(Icons.store, size: 24),
                    ),
                    const UIVerticalSpace14(),
                    Text(
                      shopList[0].shopName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const UIVerticalSpace6(),
                    Text(
                      "${shopList[0].address.addressLine},",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                          ),
                    ),
                    Text(
                      "${shopList[0].address.city},",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                          ),
                    ),
                    Text(
                      "${shopList[0].address.state}.",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/edit_shop", arguments: shopList[0]);
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                      onPressed: () {
                        final dialog = returnDeleteShopDialog(context, shopList[0]);

                        dialog.show(context, transitionType: DialogTransitionType.Bubble);
                      },
                      icon: Icon(Icons.delete, color: Theme.of(context).colorScheme.error)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
