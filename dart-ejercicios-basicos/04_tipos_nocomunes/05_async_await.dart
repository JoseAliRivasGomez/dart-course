import 'dart:io';

main() async {
  // OSX y Linux
  // String path = Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt';

  // Windows
  String path =
      Directory.current.path + '\\04_tipos_nocomunes\\assets\\personas.txt';

  // leerArchivo(path).then((value) => print(value));
  
  String texto = await leerArchivo(path);
  print(texto);

  print('Fin del main');
}

Future<String> leerArchivo(String path) async {
  File file = new File(path);
  return file.readAsString();
}
