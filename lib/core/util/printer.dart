import 'dart:convert';

void prettyPrintJson(Map<String, dynamic> json) {
  JsonEncoder encoder = const JsonEncoder.withIndent('  ');
  String prettyPrint = encoder.convert(json);
  print(prettyPrint);
}
