// ignore_for_file: prefer_const_constructors

import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/views/debug/cubit/playground_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlaygroundTwoScreen extends StatelessWidget {
  const PlaygroundTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlaygroundCubit(repository: locator()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: PrimaryButton(
                  width: 200,
                  content: "Create Produce",
                  onPressed: () {
                    context.read<PlaygroundCubit>().createProduce(
                          produceName: "Beijing Cabbage",
                          currentProducePrice: 99,
                        );
                  },
                ),
              ),
              UIVerticalSpace6(),
              Center(
                child: PrimaryButton(
                  width: 200,
                  content: "Add New Price",
                  onPressed: () {
                    context.read<PlaygroundCubit>().addNewPrice(
                          produceId: "ELIgOCHelYwb3iveHFyR",
                          currentPrice: 10,
                        );
                  },
                ),
              ),
              UIVerticalSpace6(),
              Center(
                child: PrimaryButton(
                  width: 200,
                  content: "Run Debug",
                  onPressed: () {
                    context.read<PlaygroundCubit>().debugMethod(
                          produceId: "ELIgOCHelYwb3iveHFyR",
                        );
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
