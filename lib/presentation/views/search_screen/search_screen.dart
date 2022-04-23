import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:flutter/material.dart';

import '../../smart_widgets/custom_search_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
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
            Navigator.of(context).pop();
          },
        ),
        body: ListView(
          children: [
            Hero(
              tag: "search_bar",
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: CustomSearchField(
                  isFocus: true,
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
