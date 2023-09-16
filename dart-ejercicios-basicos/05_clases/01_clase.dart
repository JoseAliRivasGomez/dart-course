import 'clases/persona.dart';

main() {
  final persona = new Persona(edad: 40, nombre: 'Juan Carlos');
  final persona2 = new Persona.persona30('Hanzel');
  final persona3 = new Persona.persona40('María');

  // persona..nombre = 'Fernando'
  //        ..edad   = 33;
  //        ..bio    = 'Nació por ahí'; // privado

  // persona.bio = 'Cambié el valor!';

  print(persona);
  print(persona2);
  print(persona3);
}
