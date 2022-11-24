void main() {
  const urlElegida =
      "https://www.matem.unam.mx/~omar/grupoides/tarea1.html?search=daniel";
  final urluno = Uri.parse(urlElegida);
  print(urluno);
  print(urluno.origin);
  print(urluno.scheme);
  print(urluno.query);
  //print(urlElegida.query);
}
