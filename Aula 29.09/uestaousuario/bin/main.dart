import 'package:uestaousuario/usuario.dart';

import '../lib/database_config.dart';
import '../lib/database_conection.dart';
import 'package:uestaousuario/usuario_dao.dart';
import 'package:uestaousuario/menu.dart';

void main() async {
  final config = DatabaseConfig(
    host: 'localhost', 
    port: 3306, 
    user: 'root', 
    password: 'unifeob@123', 
    dbName: 'sistema'
    );

  final db = DatabaseConnection(config);
  bool conectado = await db.connect();

  if(conectado){
    final usuarioDao = UsuarioDao(db);
    final menu = Menu(usuarioDao);
    menu.exibir();
    //await db.close();
  }else{
    print('ENCERRANDO APLICAÇÃO.... ERRO NA CONEXÃO....');
  }
}