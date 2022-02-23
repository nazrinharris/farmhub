// ignore_for_file: prefer_const_constructors
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlaygroundScreen extends StatelessWidget {
  const PlaygroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProduceManagerBloc(repository: locator()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: BlocBuilder<ProduceManagerBloc, ProduceManagerState>(
                      builder: (context, state) {
                    if (state is PMSInitial) {
                      return Text("Nothin really.");
                    } else if (state is PMSGetFirstTenProduceLoading) {
                      return CircularProgressIndicator();
                    } else if (state is PMSGetFirstTenProduceSuccess) {
                      return Text(state.produceList.toString());
                    } else if (state is PMSGetFirstTenProduceError) {
                      return Text('ERROR! Code: ${state.code}, Message: ${state.message}');
                    } else {
                      return Text('Unknown State: ');
                    }
                  }),
                ),
                UIVerticalSpace30(),
                Container(
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 200,
                    content: "Retrieve List!",
                    onPressed: () {
                      context
                          .read<ProduceManagerBloc>()
                          .add(ProduceManagerEvent.execGetFirstTenProduce());
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class SmallBox extends StatelessWidget {
  const SmallBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
