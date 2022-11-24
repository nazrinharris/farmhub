import 'dart:math';

import 'package:flutter/foundation.dart';

num roundNum(num value, int places) {
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

void printList(List<dynamic> givenList) {
  if (givenList.isEmpty) {
    print("[]");
    return;
  }

  for (dynamic object in givenList) {
    debugPrint(object.toString());
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() =>
      replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}
