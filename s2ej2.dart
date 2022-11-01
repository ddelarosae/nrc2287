import 'dart:io';

void suma(number1, number2) {
  double res = number1 + number2;
  print("el resultado es $res");
}

void main() {
  print("ingresar un numero");
  double numero = double.parse(stdin.readLineSync()!);
  double numero2 = double.parse(stdin.readLineSync()!);
  suma(numero, numero2);
}
