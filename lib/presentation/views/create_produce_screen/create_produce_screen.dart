// ignore_for_file: prefer_const_constructors

import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/create_produce_screen_bloc.dart';

class CreateProduceScreen extends StatelessWidget {
  const CreateProduceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProduceManagerBloc(repository: locator())),
      ],
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => CreateProduceScreenBloc(),
          child: Scaffold(
            appBar: DefaultAppBar(),
            body: SafeArea(
              child: Center(
                child: Text("Create Produce Screen"),
              ),
            ),
          ),
        );
      }),
    );
  }
}
