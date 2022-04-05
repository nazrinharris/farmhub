import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  final Function()? onFieldFocus;

  const CustomSearchField({
    Key? key,
    required this.onFieldFocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      type: MaterialType.transparency,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.only(bottom: 4, left: 10, right: 10),
        height: 36,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8, left: 4, top: 3),
              child: const Icon(
                Icons.search,
                size: 20,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  focusColor: Theme.of(context).focusColor,
                  hintText: "Search",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.black.withOpacity(0.2)),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.transparent),
                  ),
                ),
                onTap: onFieldFocus,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
