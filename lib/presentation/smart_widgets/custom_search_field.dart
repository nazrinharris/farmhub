import 'package:flutter/material.dart';

class CustomSearchField extends StatefulWidget {
  final Function()? onTap;
  final bool isFocus;

  const CustomSearchField({Key? key, required this.onTap, required this.isFocus}) : super(key: key);

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      widget.isFocus ? focusNode.requestFocus() : null;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                focusNode: focusNode,
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
                onTap: widget.onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
