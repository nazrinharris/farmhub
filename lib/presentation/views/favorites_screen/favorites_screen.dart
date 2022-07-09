// ignore_for_file: prefer_const_constructors

import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/custom_cupertino_sliver_refresh_control.dart';
import 'package:farmhub/presentation/views/favorites_screen/cubit/favorites_screen_cubit.dart';
import 'package:farmhub/presentation/views/main_screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/errors/failures.dart';
import '../../../core/network/network_info.dart';
import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../shared_widgets/cards.dart';
import '../../smart_widgets/produce_list_card/produce_list_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoritesScreenCubit(
        globalUICubit: locator(),
        globalAuthCubit: locator(),
        repository: locator(),
      ),
      child: Builder(builder: (context) {
        return BlocListener<GlobalUICubit, GlobalUIState>(
          listener: (context, state) {
            if (state.props.shouldRefreshFavorites) {
              context.read<FavoritesScreenCubit>().getProduceFavorites();
              context.read<GlobalUICubit>().setShouldRefreshFavorites(false);
            }
          },
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: CustomScrollView(
                physics: DefaultScrollPhysics,
                slivers: [
                  CustomCupertinoSliverRefreshControl(
                    onRefresh: () async {
                      await context.read<FavoritesScreenCubit>().getProduceFavorites();
                    },
                  ),
                  SliverFavoritesHeader(),
                  SliverFavoritesErrorCard(),
                  SliverWhiteSpace(30),
                  SliverFavoritesContent(),
                ],
              )),
        );
      }),
    );
  }
}

class SliverFavoritesErrorCard extends StatefulWidget {
  SliverFavoritesErrorCard({Key? key}) : super(key: key);

  @override
  State<SliverFavoritesErrorCard> createState() => _SliverFavoritesErrorCardState();
}

class _SliverFavoritesErrorCardState extends State<SliverFavoritesErrorCard> {
  @override
  void initState() {
    super.initState();
    context.read<FavoritesScreenCubit>().stream.listen((event) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final networkInfo = locator<INetworkInfo>();

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          FutureBuilder(
            future: networkInfo.isConnected,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data as bool == false) {
                  return const ErrorNoInternetCard(top: 24, right: 24, left: 24);
                } else {
                  return const SizedBox.shrink();
                }
              } else {
                return const SizedBox.shrink();
              }
            },
          )
        ],
      ),
    );
  }
}

class SliverFavoritesHeader extends StatelessWidget {
  const SliverFavoritesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      UITopPadding(),
      UICustomVertical(60),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Text(
          "Favorites",
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 38),
        ),
      )
    ]));
  }
}

class SliverFavoritesContent extends StatefulWidget {
  SliverFavoritesContent({Key? key}) : super(key: key);

  @override
  State<SliverFavoritesContent> createState() => _SliverFavoritesContentState();
}

class _SliverFavoritesContentState extends State<SliverFavoritesContent> {
  @override
  void initState() {
    super.initState();

    context.read<FavoritesScreenCubit>().getProduceFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesScreenCubit, FavoritesScreenState>(
      builder: (context, state) {
        if (state is FSInitial) {
          throw Exception("This state should have never been thrown");
        } else if (state is FSLoading) {
          // TODO: Consider making a seperate shared widget for this
          return SliverLoadingIndicator();
        } else if (state is FSComplete) {
          if (state.produceFavoritesList.isEmpty) {
            return SliverEmptyFavorites();
          } else {
            return SliverProduceFavoritesList(
              produceList: state.produceFavoritesList,
              isLoading: false,
            );
          }
        } else if (state is FSError) {
          print(state.failure);
          return SliverError(
            failure: state.failure,
          );
        } else {
          throw Exception("Unexpected state was thrown");
        }
      },
    );
  }
}

class SliverError extends StatelessWidget {
  final Failure failure;

  const SliverError({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
              alignment: Alignment.center,
              width: screenWidth,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Uh oh, something went wrong.",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.red),
                  ),
                  const UIVerticalSpace14(),
                  Text(
                    "Scroll to retry",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class SliverProduceFavoritesList extends StatelessWidget {
  final List<Produce> produceList;
  final bool isLoading;
  final bool? isAdmin;

  const SliverProduceFavoritesList({
    Key? key,
    required this.isLoading,
    required this.produceList,
    this.isAdmin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderSide borderSide =
        BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24));

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (isLoading == true) {
            if (index == produceList.length) {
              return Container(
                height: 100,
                padding: const EdgeInsets.only(top: 24),
                alignment: Alignment.center,
                child: const CupertinoActivityIndicator(),
              );
            } else {
              return ProduceListCard(
                index,
                produceList[index],
                chartAnimationDuration: 0,
              );
            }
          } else {
            return ProduceListCard(
              index,
              produceList[index],
              chartAnimationDuration: 0,
            );
          }
        },
        childCount: resolveChildCount(produceList, isLoading),
      ),
    );
  }

  int resolveChildCount(List<Produce> produceList, bool isLoading) {
    return isLoading ? produceList.length + 1 : produceList.length;
  }
}

class SliverEmptyFavorites extends StatelessWidget {
  const SliverEmptyFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          UICustomVertical(200),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hmm, this place is pretty empty  ",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                    ),
              ),
              Text("🥲", style: TextStyle(fontSize: 24))
            ],
          ),
          UIVerticalSpace6(),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Try adding some!",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 24,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
