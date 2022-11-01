main() {
  var n = num();
  int numero = n.n2Variable;
  print(numero);

  var n2;
  int numero2 = n2?.nVariable2 ?? 10;
  print(numero2);
  print("$numero2");

  return 0;
}

class num {
  int nVariable = 10;
  int n2Variable = 8;
  num() {}
}
