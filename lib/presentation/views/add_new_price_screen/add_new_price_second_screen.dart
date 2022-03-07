import 'package:farmhub/app_router.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../shared_widgets/appbars.dart';
import '../../shared_widgets/texts.dart';
import '../../shared_widgets/ui_helpers.dart';
import 'bloc/add_new_price_screen_bloc.dart';

class AddNewPriceSecondScreen extends StatefulWidget {
  final ProduceArguments produceArguments;

  const AddNewPriceSecondScreen(this.produceArguments, {Key? key}) : super(key: key);

  @override
  State<AddNewPriceSecondScreen> createState() => _AddNewPriceSecondScreenState();
}

class _AddNewPriceSecondScreenState extends State<AddNewPriceSecondScreen> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();

    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNewPriceScreenBloc(
        produceManagerRepository: locator(),
        textEditingController: textEditingController,
      ),
      child: Builder(
        builder: (context) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            appBar: DefaultAppBar(
              trailingIcon: const Icon(Icons.arrow_back),
              trailingOnPressed: () => Navigator.of(context).pop(),
            ),
            body: SafeArea(
              top: false,
              child: Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      HeaderSliver(widget.produceArguments.produce),
                      ContentSliver(textEditingController),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.symmetric(vertical: 24),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class HeaderSliver extends StatelessWidget {
  final Produce produce;

  const HeaderSliver(this.produce, {Key? key}) : super(key: key);

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
                const UITopPadding(),
                const Headline1('You have chosen:'),
                const UIVerticalSpace14(),
                Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Row(
                      children: [
                        Headline2(produce.produceName),
                        const UIHorizontalSpace14(),
                        ChangeBox(produce),
                      ],
                    )),
                const UIVerticalSpace24(),
                Container(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.24),
                  height: 1,
                ),
                const UIVerticalSpace24(),
                Text("Current Price: RM${produce.currentProducePrice["price"]}"),
                Text("Previous Price: RM${produce.previousProducePrice["price"]}"),
                const UIVerticalSpace24(),
                Container(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.24),
                  height: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContentSliver extends StatelessWidget {
  final TextEditingController textEditingController;

  const ContentSliver(this.textEditingController, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price (in RM)",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Form(
                  child: TextFormField(
                    decoration: kInputDecoration(
                      hintText: "What's the price now?",
                      context: context,
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
