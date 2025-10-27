import 'package:aula08_09/leitura_sensores.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FirebaseService {

  final String baseUrl = "copiar a url do banco firebase";
  final String authToken;
  
  FirebaseService(this.authToken);

  Future<LeituraSensor?> lerDadosRaiz () async{
    final url = Uri.parse('$baseUrl/.jason?auth=$authToken');
    final response = await http.get(url);
    if (response.statusCode == 200 && response.body != 'null'){
      try {
      
      final Map<String, dynamic> data = jsonDecode(response.body);
      if (data.containsKey('temperatura')&&
      data.containsKey('led')&&
      data.containsKey('horaTemperatura')){
        return LeituraSensor.fromJson(data);
      }
      } 
      catch (e) {
      print('Erro ao interpretar os dados: $e');
      }
    }
    return null;
  }
}