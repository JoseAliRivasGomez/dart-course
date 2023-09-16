
main() {

  // ===== Números

  int a = 10;
  double b = 5.5;

  int? c; //puede ser null

  int _a = 30; //nombre valido
  double $b = 40; //nombre valido

  double resultado = _a + $b;

  // print( resultado );



  // ===== String 

  String nombre  = 'Tony';
  String nombre2 = "Tony";
  String nombre3 = "O'Connor";
  String nombre4 = 'O\'Connor';
  String apellido = 'Stark';

  String nombreCompleto = '$nombre $apellido';

  String multilinea = '''
  Hola Mundo
  ¿Cómo estás?
  $nombreCompleto
  O'Connor''';
  
  // print(multilinea);



  // ===== Booleans

  bool isActive = true;
  bool isNotActive = !isActive;

  // print( isNotActive );



  // ===== Lists (si admite valores repetidos)

  // List<String> villanosDeprecated = new List();
  List<String> villanos = ['Lex','Red Skull','Doom']; // Son base 0
  //                         0        1         2

  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');

  // print( villanos );

  var villanosSet = villanos.toSet();
  // print(villanosSet.toList());



  // ======== Sets (no admite valores repetidos)

  Set<String> villanos2 = { 'Lex','Red Skull','Doom' };

  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');

  // print( villanos2 );

  var villanosList = villanos2.toList();



  // ====== Maps            Diccionarios / Objetos literales

  Map<int, dynamic> ironman = {
    1: 'Tony Stark',
    2: 'Inteligencia y el dinero',
    3: 9000,
  };

  // print( ironman[3] )
  Map<String, dynamic> capitan = new Map();

  capitan.addAll({
    'nombre': 'Steve',
    'poder' : 'Soportar droga sin morir',
    'nivel' : 5000
  });
  // capitan.addAll(ironman); //error de tipado

  // print( capitan['nombre'] )
  print( capitan );
}

