import 'package:http/http.dart' as http;

// import 'classes/reqres_respuesta.dart';
import 'package:dart_paquetes/classes/pais.dart';
import 'package:dart_paquetes/classes/reqres_respuesta.dart';

void getReqRespService() {

  // final url = 'https://reqres.in/api/users?page=2';
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then( (res) {
    
    final resReqRes = ReqResRespuesta.fromJson( res.body );

    // print(res);

    // final body = jsonDecode(res.body);
    // print(body);

    // print('page: ${ body['page'] }');
    // print('per_page: ${ body['per_page'] }');
    // print('id del tercer elemento: ${ body['data'][2]['id'] }');

    print('page: ${ resReqRes.page }');
    print('per_page: ${ resReqRes.perPage }');
    print('id del tercer elemento: ${ resReqRes.data[2].id }');

  });

}


// Tarea:

void getPais() {

  final url = Uri.parse('https://restcountries.com/v3.1/alpha?codes=col');
  http.get(url).then( (res) {
    
    final col = paisFromJson( res.body );

    print('===========================');
    print('Pais: ${ col[0].name.common }');
    print('Población: ${ col[0].population }');
    print('Fronteras:');
    col[0].borders.forEach((f) => print('   $f'));
    print('Idioma: ${ col[0].languages.spa }');
    print('Lat: ${ col[0].latlng[0] }');
    print('Lng: ${ col[0].latlng[1] }');
    print('Moneda: ${ col[0].currencies.cop.name }');
    print('Bandera: ${ col[0].flag }');
    print('===========================');

  }).catchError( (error){ print(error); });

}



