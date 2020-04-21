
import 'dart:core';

main() {
  ///Invocacion con parametro opcional
  Persona p = Persona(nombre: "nombre");
  pasoPersonaPorRefencia(p);
  print(p);

  int numero = 10;
  pasoPersonaPorParametro(numero);
  print(numero);

  Persona p2 = Persona();

  ///Funcion anonima
  funcionesAnidadas();

  List<int> numeros =[1,2,3,4,5];
  numeros.forEach(print);
}

void pasoPersonaPorRefencia(Persona p) {
  print("----------------------pasoPersonaPorRefencia----------------------");
  p.nombre = 'Maria';
  p.edad = 56;
}

void pasoPersonaPorParametro(int numero) {
  print("----------------------pasoPersonaPorParametro----------------------");
  numero = 100;
}

void funcionesAnidadas() {
  print("----------------------funcionesAnidadas----------------------");
  int fun1 = 1;

  void func2() {
    int fun2 = 2;
    void func3() {
      int fun3 = 3;
      void func4() {
        print("1=$fun1,2=$fun2,3=$fun3");
      }
      func4();
    }
    func3();
  }
  func2();

}

class Persona {
  String nombre;
  int edad;

//Variables con nombre
  Persona({ this.nombre, this.edad}) {}

  //Funciones de flecha
  @override
  String toString() => "nombre:$nombre - edad:$edad";
}
