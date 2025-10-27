import 'package:mysql1/mysql1.dart';
import './database_config.dart';

class DatabaseConnection {
  final DatabaseConfig config;
  MySqlConnection? _connection; //_connection é um atributo privado

//Herança
  DatabaseConnection(this.config);

  Future<bool> connect() async {
    try{
      _connection = await MySqlConnection.connect(ConnectionSettings(
        host: config.host,
        port: config.port,
        user: config.user,
        password: config.password,
        db: config.dbName
      ));
      try{
        var result = await _connection!.query('SELECT 1');
        print('Conexão Estabelecida Com Sucesso!');
        return true;
      }catch(queryError){
        print('Erro ao executar query tese: $queryError');
        return false;
      }
    } catch (e){
      print('Erro ao conectar: $e');
      return false;
    }
  }
  Future<void> close() async{
    await _connection?.close();
    print('Conexao encerrada!');
  }

  MySqlConnection? get connection => _connection;

}