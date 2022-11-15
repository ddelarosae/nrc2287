import 'dart:convert';

class Person {
  Person(this.name, this.age);
  final String name;
  final int age; // named constructor
  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age']; // method
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

void main() {
  String rawJson = '{"name":"Mary","age":30}';
  Map<String, dynamic> map = jsonDecode(rawJson);
  Person person = Person.fromJson(map);
  print(person.name);
}
