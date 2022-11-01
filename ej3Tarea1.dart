import 'dart:io';

void main() {
  stdout.writeln("cual es tu edad");
  int edad = int.parse(stdin.readLineSync()!);
  if (edad < 18) {
    print("no puede votar en estas elecciones");
  } else if (edad >= 18) {
    print("puede votar");
  }
}
