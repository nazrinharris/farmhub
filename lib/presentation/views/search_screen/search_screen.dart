import 'package:farmhub/app_router.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:farmhub/presentation/views/search_screen/bloc/search_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../smart_widgets/custom_search_field.dart';

class SearchScreen extends StatefulWidget {
  final SearchScreenArguments arguments;

  const SearchScreen(this.arguments, {Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchScreenBloc(produceManagerRepository: locator()),
      child: Builder(builder: (context) {
        return WillPopScope(
          onWillPop: () async {
            FocusScope.of(context).unfocus();
            return true;
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            appBar: DefaultAppBar(
              title: "Search Produce",
              trailingIcon: const Icon(Icons.close),
              leadingIcon: const Icon(
                Icons.help,
                color: Colors.transparent,
              ),
              trailingOnPressed: () {
                FocusScope.of(context).unfocus();
                Navigator.of(context).pop();
              },
            ),
            body: Column(
              children: [
                const UICustomVertical(100),
                Hero(
                  tag: "search_bar",
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: CustomSearchField(
                      isFocus: true,
                      onTap: () {},
                      onChanged: (value) {
                        context
                            .read<SearchScreenBloc>()
                            .add(SearchScreenEvent.onChanged(query: value));
                      },
                      onSubmitted: (value) {
                        context
                            .read<SearchScreenBloc>()
                            .add(SearchScreenEvent.onSubmitted(query: value));
                      },
                    ),
                  ),
                ),
                SearchProduceList(scrollController: scrollController),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class SearchProduceList extends StatefulWidget {
  final ScrollController scrollController;

  const SearchProduceList({Key? key, required this.scrollController}) : super(key: key);

  @override
  State<SearchProduceList> createState() => _SearchProduceListState();
}

class _SearchProduceListState extends State<SearchProduceList> {
  @override
  void initState() {
    super.initState();

    context.read<SearchScreenBloc>().stream.listen((event) {
      setState(() {});
    });

    widget.scrollController.addListener(() {
      if (widget.scrollController.offset >= widget.scrollController.position.maxScrollExtent &&
          !widget.scrollController.position.outOfRange) {
        print("Reached the end of the list!");
        context.read<SearchScreenBloc>().add(const SearchScreenEvent.getNextTenProduce());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchScreenBloc, SearchScreenState>(
      builder: (context, state) {
        if (state is SSSInitial) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "Type in the name of the produce to start searching!",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.black.withOpacity(0.45)),
              textAlign: TextAlign.center,
            ),
          );
        } else if (state is SSSLoading) {
          return Container(
            padding: const EdgeInsets.only(top: 100),
            child: const CircularProgressIndicator(),
          );
        } else if (state is SSSLoadingNextTenProduce) {
          return Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                controller: widget.scrollController,
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                itemCount: resolveChildCount(state.props.produceList, true),
                itemBuilder: (context, index) {
                  if (index == state.props.produceList.length) {
                    return Container(
                      height: 100,
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(),
                    );
                  } else {
                    return ProduceListCard(index, state.props.produceList[index]);
                  }
                },
              ),
            ),
          );
        } else if (state is SSSCompleted) {
          return Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                controller: widget.scrollController,
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                itemCount: state.props.produceList.length + 1,
                itemBuilder: (context, index) {
                  if (index == state.props.produceList.length) {
                    return const SizedBox(height: 100);
                  } else {
                    return ProduceListCard(index, state.props.produceList[index]);
                  }
                },
              ),
            ),
          );
        } else if (state is SSSError) {
          return Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                controller: widget.scrollController,
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                itemCount: state.props.produceList.length + 1,
                itemBuilder: (context, index) {
                  if (index == state.props.produceList.length) {
                    return Container(
                      height: 100,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Uh oh, something went wrong.",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.red),
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
                    return ProduceListCard(index, state.props.produceList[index]);
                  }
                },
              ),
            ),
          );
        } else {
          return Center(
            child: Text("Unexpected"),
          );
        }
      },
    );
  }

  int resolveChildCount(List<Produce> produceList, bool isLoading) {
    return isLoading ? produceList.length + 1 : produceList.length;
  }
}
