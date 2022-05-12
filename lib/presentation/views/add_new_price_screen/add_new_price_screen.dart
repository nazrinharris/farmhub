// ignore_for_file: prefer_const_constructors
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/bloc/add_new_price_screen_bloc.dart';
import 'package:farmhub/presentation/views/main_screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_router.dart';
import '../../../locator.dart';
import '../../shared_widgets/texts.dart';
import '../../smart_widgets/custom_search_field.dart';

class AddNewPriceScreen extends StatefulWidget {
  const AddNewPriceScreen({Key? key}) : super(key: key);

  @override
  State<AddNewPriceScreen> createState() => _AddNewPriceScreenState();
}

class _AddNewPriceScreenState extends State<AddNewPriceScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ProduceManagerBloc(repository: locator()),
        )
      ],
      child: Builder(
        builder: (context) => BlocProvider(
          create: (_) => AddNewPriceScreenBloc(
            produceManagerRepository: locator(),
          ),
          child: Builder(
            builder: (context) {
              return Scaffold(
                resizeToAvoidBottomInset: false,
                extendBodyBehindAppBar: true,
                appBar: DefaultAppBar(
                  leadingIcon: const Icon(Icons.close),
                  leadingOnPressed: () => Navigator.of(context).pop(),
                ),
                body: SafeArea(
                  top: false,
                  child: CustomScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    controller: scrollController,
                    slivers: [
                      CupertinoSliverRefreshControl(
                        onRefresh: () async {},
                      ),
                      HeaderSliver(),
                      SliverWhiteSpace(30),
                      ProduceListSliver(
                        scrollController: scrollController,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ProduceListSliver extends StatefulWidget {
  final ScrollController scrollController;

  const ProduceListSliver({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  State<ProduceListSliver> createState() => _ProduceListSliverState();
}

class _ProduceListSliverState extends State<ProduceListSliver> {
  @override
  void initState() {
    super.initState();
    context.read<AddNewPriceScreenBloc>().add(const AddNewPriceScreenEvent.getFirstTenProduce());

    context.read<AddNewPriceScreenBloc>().stream.listen((event) {
      setState(() {});
    });
    widget.scrollController.addListener(() {
      if (widget.scrollController.offset >= widget.scrollController.position.maxScrollExtent &&
          !widget.scrollController.position.outOfRange) {
        print("Reached the end of the list!");
        context.read<AddNewPriceScreenBloc>().add(const AddNewPriceScreenEvent.getNextTenProduce());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNewPriceScreenBloc, AddNewPriceScreenState>(
      builder: (context, state) {
        if (state is ANPSPricesLoading) {
          return SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 250,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ]));
        } else if (state is ANPSNextPricesLoading) {
          final produceList = state.props.produceList;

          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == produceList.length) {
                  return Container(
                    height: 100,
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator(),
                  );
                } else {
                  return ProduceListCard(
                    index,
                    produceList[index],
                    onTap: () => Navigator.of(context).pushNamed(
                      '/add_new_price_second',
                      arguments: ProduceArguments(produceList[index]),
                    ),
                    chartAnimationDuration: 0,
                  );
                }
              },
              childCount: produceList.length + 1,
            ),
          );
        } else if (state is ANPSPricesCompleted) {
          final produceList = state.props.produceList;

          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == produceList.length) {
                  return SizedBox(
                    height: 100,
                  );
                } else {
                  return ProduceListCard(
                    index,
                    produceList[index],
                    onTap: () => Navigator.of(context).pushNamed(
                      '/add_new_price_second',
                      arguments: ProduceArguments(produceList[index], isFromSearch: false),
                    ),
                    chartAnimationDuration: 0,
                  );
                }
              },
              childCount: produceList.length + 1,
            ),
          );
        } else if (state is ANPSPricesError) {
          debugPrintStack();
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == state.props.produceList.length) {
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
                        UIVerticalSpace14(),
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
                    state.props.produceList[index],
                    onTap: () => Navigator.of(context).pushNamed(
                      '/add_new_price_second',
                      arguments: ProduceArguments(state.props.produceList[index]),
                    ),
                    chartAnimationDuration: 0,
                  );
                }
              },
              childCount: state.props.produceList.length + 1,
            ),
          );
        } else {
          return SliverList(
              delegate: SliverChildListDelegate([
            SizedBox.shrink(),
          ]));
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.scrollController.dispose();
  }
}

class HeaderSliver extends StatelessWidget {
  const HeaderSliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UITopPadding(),
                const Headline1('Add new Price'),
                UIVerticalSpace14(),
                Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Text(
                    'Choose the desired Produce',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Hero(
                    tag: "add_new_price_search_bar",
                    child: CustomSearchField(
                      margin: EdgeInsets.zero,
                      isFocus: false,
                      // TODO: Set default right inside of [CustomSearchField] rather than this (onChanged)
                      onChanged: (value) {},
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          '/add_new_price_search_screen',
                          arguments: SearchScreenArguments(FocusNode()),
                        );
                      },
                    ),
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
