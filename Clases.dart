
import 'dart:math';

main() {
  final Persona p = Persona.nombreCompleto();
  print(p._edad);

  final Alumno a = Alumno();
  print("Obtener la edad de alumno ${a._edad}");
}

class Persona {
  ///_ al inicio las hace privadas
  String _nombre;
  int _edad;

//Variables con nombre

  Persona() {}

  Persona.nombreCompleto() {
    print("Constructor con nombre");
  }

  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  } //Funciones de flecha

  @override
  String toString() => "nombre:$nombre - edad:$edad";

  int get edad => _edad;

  set edad(int value) {
    _edad = value;
  }
}

class Alumno extends Persona {}
