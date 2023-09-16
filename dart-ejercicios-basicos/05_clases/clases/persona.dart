

class Persona {

  // Campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Hola, soy una propiedad privada.';

  // Get y sets
  // String get bio {
  //   return _bio.toUpperCase();
  // }
  String get bio => _bio.toUpperCase();

  // set bio( String texto ) {
  //   _bio = texto;
  // }
  set bio( String texto ) => _bio = texto;


  // Constructores
  // Persona( int edad, String nombre ) {
  //   // print('Constructor');
  //   this.edad   = edad;
  //   this.nombre = nombre;
  // }
  Persona({ required this.edad, this.nombre = 'Sin Nombre'});

  Persona.persona30( this.nombre ) {
    this.edad = 30;
  }

  Persona.persona40( String nombre ) { //igual a .persona30
    this.edad = 40;
    this.nombre = nombre;
  }



  // métodos
  @override
  String toString() => '$nombre $edad $_bio';
}
