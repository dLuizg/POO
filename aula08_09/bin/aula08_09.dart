import 'dart:async';
import 'package:aula08_09/auth_service.dart';
import 'package:aula08_09/firebas_service.dart';
import 'package:aula08_09/leitura_sensores.dart';

void main() async{
  AuthService authService = AuthService();
  String? token = await authService.autenticarAnonimamente();
}