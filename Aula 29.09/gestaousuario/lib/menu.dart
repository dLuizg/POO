import 'dart:io';
import 'package:gestaousuario/usuario.dart';
import 'package:gestaousuario/usuario_dao.dart';

class Menu {
  final UsuarioDao usuarioDao;

  Menu(this.usuarioDao);

  void exibir() async {
    while(true){
      print('\n Menu');
      print('1 - Inserir novo Usuario');
      print('2 - Listar todos os Usuario');
      stdout.write('Escolha uma opção: ');
      String? opcao = stdin.readLineSync();

      if(opcao == '1'){
        stdout.write('Nome: ');
        String? nome = stdin.readLineSync();

        stdout.write('E-mail: ');
        String? email = stdin.readLineSync();

        stdout.write('Idade: ');
        int idade = int.parse(stdin.readLineSync() ?? '0');

        Usuario usuario = Usuario(nome: nome!, email: email!, idade: idade);
        await usuarioDao.inserirUsuario(usuario);
      }else if(opcao == '2'){
        await usuarioDao.listarUsuarios();
      }else{
        print('Opção Invalida. Tente Novamente');
      }

    }
  }
}