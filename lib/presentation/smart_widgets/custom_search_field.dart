import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatefulWidget {
  final Function()? onTap;
  final Function(String) onChanged;
  final Function(String)? onSubmitted;
  final bool? isFocus;
  final FocusNode? focusNode;
  final TextEditingController? textEditingController;

  const CustomSearchField({
    Key? key,
    required this.onTap,
    required this.onChanged,
    this.isFocus,
    this.focusNode,
    this.onSubmitted,
    this.textEditingController,
  }) : super(key: key);

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  late FocusNode focusNode;
  late TextEditingController textEditingController;
  late bool isFieldEmpty;

  @override
  void initState() {
    super.initState();

    focusNode = widget.focusNode ?? FocusNode();
    textEditingController = widget.textEditingController ?? TextEditingController();
    isFieldEmpty = true;

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      if (widget.isFocus != null) widget.isFocus! ? focusNode.requestFocus() : null;
    });
  }

  // TODO: Figure out if there is a cleaner way to do this.
  void setAsTrue() {
    isFieldEmpty = true;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.only(bottom: 1, left: 10, right: 10),
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
                style: Theme.of(context).textTheme.bodyText1,
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
                onChanged: (value) {
                  if (value == "" || value.isEmpty) {
                    isFieldEmpty = true;
                  } else {
                    isFieldEmpty = false;
                  }
                  widget.onChanged(value);
                  setState(() {});
                },
                onSubmitted: (value) {
                  if (value == "" || value.isEmpty) {
                    isFieldEmpty = true;
                  } else {
                    isFieldEmpty = false;
                  }
                  widget.onSubmitted!(value);
                  setState(() {});
                },
                controller: textEditingController,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 4),
                child: resolveTrailingIcon(isFieldEmpty, textEditingController, setAsTrue)),
          ],
        ),
      ),
    );
  }

  Widget resolveTrailingIcon(
      bool isFieldEmpty, TextEditingController textEditingController, Function setAsTrue) {
    if (isFieldEmpty == true) {
      print("Rebuilt Shrink!");
      return const SizedBox.shrink();
    } else {
      print("Rebuilt Icon Button");
      return IconButton(
        onPressed: () {
          textEditingController.clear();
          focusNode.requestFocus();
          setAsTrue();
          setState(() {});
        },
        icon: const Icon(
          Icons.close,
          size: 20,
        ),
      );
    }
  }
}
