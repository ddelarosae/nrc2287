import 'dart:io';

import 'package:dart_basics/main.dart';

void main(List<String> arguments) {
  final converter = MainConverter();
  print("Convertir:");
  print("1. Binario a Decimal");
  print("2. Decimal a Binario");
  int option = int.parse(stdin.readLineSync()!);
  if (option == 1) {
    print("Escribe el numero binario:");
    converter.binary = stdin.readLineSync()!;
    print('Decimal: ${converter.convertBinary()}');
  }
}
