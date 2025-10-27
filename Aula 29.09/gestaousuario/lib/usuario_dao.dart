//import 'package:mysql1/mysql1.dart';
import 'package:gestaousuario/usuario.dart';
import 'package:gestaousuario/database_connection.dart';

class UsuarioDao {
  final DatabaseConnection db;

  UsuarioDao(this.db);

  Future<void> inserirUsuario(Usuario usuario) async{
    try {
      final conn = db.connection;
      if(conn != null){
        await conn.query(
          'INSERT INTO usuarios (nome, email, idade) VALUES (?,?,?)',
          [usuario.nome, usuario.email, usuario.idade]
        );
        print('Usuário inserido com sucesso!!');
      }else{
        print('Conexão com banco não esta ativa!');
      }
      
    } catch (e) {
      print('Erro ao inserir o usuario: $e');
    }
  }

  Future<void> listarUsuarios() async{
    try {
      final conn = db.connection;

      if(conn == null){
        print('Conexão com banco não está ativa');
        return;
      }

      var result = await conn.query(
        'SELECT id, nome, email, idade FROM usuarios'
      );

      if(result.isEmpty){
        print('Nenhum usuário encontrado');
        return;
      }

      print('\n Lista de Usuarios');
      for(var row in result){
        if(row.length>=4){
          print('Id: ${row[0]}, Nome: ${row[1]}, Email: ${row[2]}, Idade: ${row[3]}');
        }else{
          print('Linha Inválida ou Incompleta: $row');
        }
      }
      
    } catch (e) {
      print('Erro ao listar os Usuarios');
    }
  }

}