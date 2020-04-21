main() {
  numeros();
  booleanos();
  listas();
  mapas();
}

numeros() {
  print("----------------------Numeros----------------------");
  int tres = 3;
  int cuatro = 4;
  num cinco = 5.0;
  int _default;

  double mul = cinco * tres;
  print("4 = $cuatro");
  print("5 X 3 = $mul");
  print("default=$_default");
}

booleanos() {
  print("----------------------Booleanos----------------------");
  bool verdadero;
  bool falso = false;
  print("default=$verdadero");
  verdadero = true;
  if (verdadero) {
    print("true=$verdadero");
  } else {
    print("No entra");
  }
}

listas() {
  print("----------------------Listas----------------------");
  List<int> numeros = [0, 1, 1, 2, 3, 5];
  List<int> numeros2 = List();
  List dinamica = [1, "a", 3];
  print("numeros $numeros");

  numeros2.add(10);
  print("numeros $numeros2");

  print("lista dinamica $dinamica");

  numeros.forEach((f) => print(f));
}

mapas() {
  print("----------------------Mapas----------------------");
  Map<int, String> personas = {1: "juan", 2: "pedro", 3: "ana"};
  print(personas);
  print("personas en las pos 1=" + personas[1]);
  personas.entries.forEach((f) => print("Llave=${f.key} : Valor=${f.value}"));
}
