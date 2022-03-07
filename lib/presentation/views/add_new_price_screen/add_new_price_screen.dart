// ignore_for_file: prefer_const_constructors
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/bloc/add_new_price_screen_bloc.dart';
import 'package:farmhub/presentation/views/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_router.dart';
import '../../../locator.dart';
import '../../shared_widgets/texts.dart';

class AddNewPriceScreen extends StatelessWidget {
  const AddNewPriceScreen({Key? key}) : super(key: key);

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
                  trailingIcon: const Icon(Icons.close),
                  trailingOnPressed: () => Navigator.of(context).pop(),
                ),
                body: SafeArea(
                  top: false,
                  child: CustomScrollView(
                    slivers: [
                      HeaderSliver(),
                      SliverWhiteSpace(30),
                      ProduceListSliver(),
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
  const ProduceListSliver({Key? key}) : super(key: key);

  @override
  State<ProduceListSliver> createState() => _ProduceListSliverState();
}

class _ProduceListSliverState extends State<ProduceListSliver> {
  @override
  void initState() {
    super.initState();
    context.read<AddNewPriceScreenBloc>().add(const AddNewPriceScreenEvent.getFirstTenProduce());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNewPriceScreenBloc, AddNewPriceScreenState>(
      builder: (context, state) {
        if (state is ANPSLoading) {
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
        } else if (state is ANPSGetFirstTenProduceSuccess) {
          final produceList = state.produceList;

          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ProduceListCard(
                  index,
                  produceList[index],
                  onTap: () => Navigator.of(context).pushNamed(
                    '/add_new_price_second',
                    arguments: ProduceArguments(produceList[index]),
                  ),
                );
              },
              childCount: produceList.length,
            ),
          );
        } else if (state is ANPSGetFirstTenProduceError) {
          debugPrintStack();
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
        } else {
          return SliverList(
              delegate: SliverChildListDelegate([
            SizedBox.shrink(),
          ]));
        }
      },
    );
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
