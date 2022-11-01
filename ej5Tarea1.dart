import 'dart:io';
import 'dart:math';

void main() {
  print("presione x para salir");
  juego();
}

juego() {
  final azar = Random();
  int randNumber = azar.nextInt(100);
  print("$randNumber");

  while (true) {
    stdout.writeln("Escoja un numero entre 0 y 100");
    String chosenNumber = stdin.readLineSync()!;
    if (chosenNumber.toLowerCase() == "x") {
      print("\nchao");
      break;
    } else if (int.parse(chosenNumber) > 100) {
      print("Por favor elija un numero entre 0 y 100");
      continue;
    }

    if (int.parse(chosenNumber) == randNumber) {
      print("Felicidades has adivinado el numero");
      break;
    } else if (int.parse(chosenNumber) > randNumber) {
      print("Tu numero es mayor al esperado");
      continue;
    } else {
      print("El numero es menor al esperado");
      continue;
    }
  }
}
