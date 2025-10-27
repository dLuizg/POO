import 'package:mysql1/mysql1.dart';
import 'package:uestaousuario/usuario.dart';
import 'package:uestaousuario/database_conection.dart';

class UsuarioDao {
    final DatabaseConnection db;

    UsuarioDao(this.db);

    Future<void> inserirUsuario(Usuario usuario) async{
    try{
        final conn = db.connection;
        if(conn != null){
            await conn.query(
                'INSERT INTO usuarios (nome, email, idade) VALUES (?, ?, ?)',
                [usuario.nome, usuario.email, usuario.idade]
            );
            print('Usuário inserido com Sucesso!');
        } else{
            print('Conexão com o banco não está ativa!');
        }

    } catch (e) {
        print('Erro ao inserir o usuario: ${e}');
    }
}
}