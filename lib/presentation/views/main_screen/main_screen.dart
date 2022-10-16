import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/network/network_info.dart';

import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/cards.dart';

import 'package:farmhub/presentation/views/main_screen/bloc/main_screen_bloc.dart';
import 'package:farmhub/presentation/views/main_screen/main_screen_fab.dart';
import 'package:farmhub/presentation/views/main_screen/main_screen_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/errors/failures.dart';
import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../locator.dart';
import '../../shared_widgets/scroll_physics.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../../smart_widgets/produce_list_card/produce_list_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late AnimationController mainHeaderController;
  late ScrollController scrollController;

  late Animation<double> extent;
  late Animation<double> adminExtent;

  late FocusNode mainScreenFocusNode;

  @override
  void initState() {
    super.initState();

    mainScreenFocusNode = FocusNode();
    mainScreenFocusNode.canRequestFocus = false;

    mainHeaderController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 500),
    );
    scrollController = ScrollController();

    mainHeaderController.addListener(() {
      setState(() {});
    });

    extent = Tween<double>(begin: 166.0, end: 68.0).animate(mainHeaderController);
    adminExtent = Tween<double>(begin: 200.0, end: 68.0).animate(mainHeaderController);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProduceManagerBloc(repository: locator()),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => MainScreenBloc(
            mainHeaderController: mainHeaderController,
            produceManagerBloc: context.read<ProduceManagerBloc>(),
            produceManagerRepository: locator(),
          ),
          child: Builder(
            builder: (context) => BlocListener<GlobalUICubit, GlobalUIState>(
              listener: (context, state) {
                if (state.props.shouldRefreshMain) {
                  context.read<MainScreenBloc>().add(const MainScreenEvent.refresh());
                  context.read<GlobalUICubit>().setShouldRefreshMain(false);
                  setState(() {});
                }
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                extendBodyBehindAppBar: true,
                extendBody: true,
                floatingActionButton: MainScreenFAB(),
                body: SafeArea(
                  child: CustomScrollView(
                    controller: scrollController,
                    physics: DefaultScrollPhysics,
                    slivers: [
                      CupertinoSliverRefreshControl(
                        onRefresh: () async {
                          setState(() {});
                          context.read<MainScreenBloc>().add(const MainScreenEvent.refresh());

                          await context.read<MainScreenBloc>().stream.firstWhere((state) {
                            if (state is MSSPricesCompleted) {
                              return true;
                            } else if (state is MSSPricesError) {
                              return true;
                            } else {
                              return false;
                            }
                          });
                        },
                      ),
                      BlocBuilder<MainScreenBloc, MainScreenState>(
                        builder: (context, state) {
                          bool isAdmin = false;
                          if (state.props.farmhubUser == null) {
                            isAdmin = false;
                          } else {
                            isAdmin = determineIfAdmin(state.props.farmhubUser!);
                          }

                          return SliverMainScreenHeader(
                            isAdmin ? adminExtent : extent,
                            mainScreenFocusNode,
                            isAdmin,
                          );
                        },
                      ),
                      const SliverMainScreenErrorCard(),
                      SliverMainScreenListView(
                        scrollController,
                      ),
                      const SliverWhiteSpace(200)
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    mainScreenFocusNode.dispose();
  }
}

class SliverMainScreenErrorCard extends StatefulWidget {
  const SliverMainScreenErrorCard({Key? key}) : super(key: key);

  @override
  State<SliverMainScreenErrorCard> createState() => _SliverMainScreenErrorCardState();
}

class _SliverMainScreenErrorCardState extends State<SliverMainScreenErrorCard> {
  @override
  void initState() {
    super.initState();
    context.read<MainScreenBloc>().stream.listen((event) {
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
                  return const ErrorNoInternetCard(
                    margin: EdgeInsets.only(top: 14, bottom: 34, right: 24, left: 24),
                  );
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

class SliverMainScreenListView extends StatefulWidget {
  final ScrollController scrollController;

  const SliverMainScreenListView(this.scrollController, {Key? key}) : super(key: key);

  @override
  State<SliverMainScreenListView> createState() => _SliverMainScreenListViewState();
}

class _SliverMainScreenListViewState extends State<SliverMainScreenListView> {
  @override
  void initState() {
    super.initState();
    context.read<MainScreenBloc>().add(const MainScreenEvent.getFirstTenProduce());

    context.read<MainScreenBloc>().stream.listen((event) {
      setState(() {});
    });

    widget.scrollController.addListener(() {
      if (widget.scrollController.offset >= widget.scrollController.position.maxScrollExtent &&
          !widget.scrollController.position.outOfRange) {
        context.read<MainScreenBloc>().add(const MainScreenEvent.getNextTenProduce());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentState = context.read<MainScreenBloc>().state;
    final isAdmin = locator<GlobalAuthCubit>().state.isAdmin;

    if (currentState is MSSInitial) {
      throw Exception("MSSInitial State is received when it should not have existed.");
    } else if (currentState is MSSPricesLoading) {
      return const SliverLoadingIndicator();
    } else if (currentState is MSSNextPricesLoading) {
      return SliverProduceList(
        props: currentState.props,
        isLoading: true,
        isAdmin: isAdmin,
      );
    } else if (currentState is MSSPricesCompleted) {
      return SliverProduceList(
        props: currentState.props,
        isLoading: false,
        isAdmin: isAdmin,
      );
    } else if (currentState is MSSPricesError) {
      return SliverProduceErrorList(
        props: currentState.props,
        failure: currentState.failure,
        isAdmin: isAdmin,
      );
    }

    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
        child: Text('Uh oh, some weird state is thrown here. In ProduceList!'),
      )
    ]));
  }
}

class SliverLoadingIndicator extends StatelessWidget {
  const SliverLoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            alignment: Alignment.center,
            width: screenWidth,
            height: 200,
            child: const CupertinoActivityIndicator(),
          ),
        ],
      ),
    );
  }
}

class SliverProduceList extends StatelessWidget {
  final MainScreenProps props;
  final bool isLoading;
  final bool? isAdmin;

  const SliverProduceList({
    Key? key,
    required this.props,
    required this.isLoading,
    this.isAdmin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderSide borderSide =
        BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24));

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (props.produceList.isNotEmpty) {
            if (isLoading == true) {
              if (index == props.produceList.length) {
                return Container(
                  height: 100,
                  padding: const EdgeInsets.only(top: 24),
                  alignment: Alignment.center,
                  child: const CupertinoActivityIndicator(),
                );
              } else {
                return ProduceListCard(
                  index,
                  props.produceList[index],
                  chartAnimationDuration: 0,
                  farmhubUser: props.farmhubUser!,
                );
              }
            } else {
              return ProduceListCard(
                index,
                props.produceList[index],
                chartAnimationDuration: 0,
                farmhubUser: props.farmhubUser!,
              );
            }
          } else {
            return Container(
                height: 350,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const UICustomVertical(100),
                    Text(
                      "Uh oh..  Something's wrong..",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                          ),
                    ),
                    const UIVerticalSpace6(),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Please try again",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 24,
                              color: Theme.of(context).colorScheme.error,
                            ),
                      ),
                    ),
                  ],
                ));
          }
        },
        childCount: resolveChildCount(props.produceList, isLoading),
      ),
    );
  }

  int resolveChildCount(List<Produce> produceList, bool isLoading) {
    if (produceList.isEmpty) {
      return 1;
    } else {
      return isLoading ? produceList.length + 1 : produceList.length;
    }
  }
}

class SliverProduceErrorList extends StatefulWidget {
  final MainScreenProps props;
  final Failure failure;
  final bool? isAdmin;

  const SliverProduceErrorList({
    Key? key,
    required this.props,
    required this.failure,
    this.isAdmin,
  }) : super(key: key);

  @override
  State<SliverProduceErrorList> createState() => _SliverProduceErrorListState();
}

class _SliverProduceErrorListState extends State<SliverProduceErrorList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.failure);

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index == widget.props.produceList.length) {
            return Container(
              height: 100,
              alignment: Alignment.center,
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
              ),
            );
          } else {
            return ProduceListCard(
              index,
              widget.props.produceList[index],
              chartAnimationDuration: 0,
              farmhubUser: widget.props.farmhubUser!,
            );
          }
        },
        childCount: widget.props.produceList.length + 1,
      ),
    );
  }
}

class SliverDebugSlot extends StatelessWidget {
  const SliverDebugSlot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(
      [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 200,
            child: PrimaryButton(
              horizontalPadding: 10,
              width: 500,
              content: "Toggle Top Header",
              onPressed: () {
                context.read<MainScreenBloc>().add(const MainScreenEvent.toggleMainHeader());
              },
            ),
          ),
        ),
      ],
    ));
  }
}

class SliverWhiteSpace extends StatelessWidget {
  final double height;

  const SliverWhiteSpace(this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        SizedBox(
          height: height,
        )
      ]),
    );
  }
}
