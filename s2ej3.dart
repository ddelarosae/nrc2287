import 'dart:io';

void main() {
  stdout.writeln("Cual es tu nombre");
  String nombre = stdin.readLineSync()!;
  print("Su nombre es: $nombre");
}
