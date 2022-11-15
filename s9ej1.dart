import 'dart:convert';

class Persona {
  Persona(this.nombre, this.edad);
  final String nombre;
  final int edad;
}

void main() {
  String json = '{"nombre":"Euler","edad":25}';
  Map<String, dynamic> map = jsonDecode(json);
  String nombre = map['nombre'];
  int edad = map['edad'];
  Persona persona = Persona(nombre, edad);
  print(persona.edad);
}
