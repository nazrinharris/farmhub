import 'package:farmhub/app_router.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:farmhub/presentation/views/search_screen/bloc/search_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../smart_widgets/custom_search_field.dart';

class SearchScreen extends StatelessWidget {
  final SearchScreenArguments arguments;

  const SearchScreen(this.arguments, {Key? key}) : super(key: key);

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
              trailingIcon: const Icon(Icons.arrow_back),
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
                SearchProduceList(),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class SearchProduceList extends StatelessWidget {
  const SearchProduceList({Key? key}) : super(key: key);

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
        } else if (state is SSSCompleted) {
          return Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                itemCount: state.produceList.length,
                itemBuilder: (context, index) {
                  final produce = state.produceList[index];

                  return ProduceListCard(index, produce);
                },
              ),
            ),
          );
        } else if (state is SSSError) {
          return Container(
            padding: const EdgeInsets.only(top: 100),
            child: Text(
              state.failure.message ?? "Unknown Error",
              style: Theme.of(context).textTheme.bodyText1,
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
}
