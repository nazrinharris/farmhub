import 'dart:math';

num roundNum(num value, int places) {
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

void printList(List<dynamic> givenList) {
  for (dynamic object in givenList) {
    print(object);
  }
}
