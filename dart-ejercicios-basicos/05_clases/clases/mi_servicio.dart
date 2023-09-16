

class MiServicio {

  //propiedad estatica privada final, mantiene instancia en memoria
  static final MiServicio _singleton = new MiServicio._internal();

  //constructor por defecto de la clase, retorna la propiedad singleton
  factory MiServicio() {
    return _singleton;
  }


  MiServicio._internal(); //constructor privado


  String url = 'https://abc';
  String key = 'ABC123';

}