
mixin Logger { //no instanciable, ni puede tener constructor

  void imprimir( String texto ) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }

}

mixin Logger2 {

  void imprimir2( String texto ) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }

}


abstract class Astro with Logger {

  String? nombre;

  Astro() {
    imprimir('-- Init del Astro --');
  }

  void existo() {
    imprimir('-- Soy un ser celestial y existo --');
  }

}

class Asteroide extends Astro with Logger, Logger2 {

  String? nombre;

  Asteroide( this.nombre ) {
    // imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }

}



main() {
  
  final ceres = new Asteroide('Ceres');

}