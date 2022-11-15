import 'dart:convert';

class Persona {
  Persona(this.nombre, this.edad);
  final String nombre;
  final int edad;
  Persona.fromJson(Map<String, dynamic> json)
      : nombre = json["nombre"],
        edad = json["edad"];
  Map<String, dynamic> toJson() {
    return {
      "nombre": nombre,
      "edad": edad,
    };
  }
}

void main() {
  String json = '{"nombre":"Sergio","edad":23}';
  Map<String, dynamic> map = jsonDecode(json);
  Persona persona = Persona.fromJson(map);
  print(persona.nombre);
  print(persona.edad);
}
