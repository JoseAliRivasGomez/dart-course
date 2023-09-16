main() {

  int a = 0;
  final double b = 10; //menos ligera
  const double c = 10; //mas ligera

  final double z;


  late final double x; //late es mas util en clases
  x = 10;

  print( x );



  
  // Late te permitirá incializarla después
  z = 20;

  // print( 'Resultado: $z');

  // a = 20; //si
  // b = 20; //no
  // c = 20; //no

  // final personasFinal = ['Juan', 'Pedro', 'Fernando'];
  // const personasConst = ['Juan', 'Pedro', 'Fernando'];

  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  List<String> personasConst = const['Juan', 'Pedro', 'Fernando'];

  // personasFinal = []; //no se puede, por ser final

  // personasFinal.add('Maria'); //si se puede agregar
  // personasConst.add('Maria'); //no se puede agregar

  // print(personasConst);
}