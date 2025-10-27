import 'dart:io';
import 'package:uestaousuario/usuario.dart';
import 'package:uestaousuario/usuario_dao.dart';

class Menu{
  final UsuarioDao usuarioDao;
  Menu(this.usuarioDao);

  void exibir() async{
    while(true){
      print('\n Menu');
      print('1 - Inserir');
      stdout.write('Escolha uma opção: ');
      String? opcao = stdin.readLineSync();

      if(opcao == '1'){
        stdout.write('Nome: ');
        String? nome = stdin.readLineSync();

        stdout.write('E-mail: ');
        String? email = stdin.readLineSync();

        stdout.write('Idade: ');
        int? idade = int.parse(stdin.readLineSync() ?? '0');

        Usuario usuario = Usuario(nome: nome!, email: email!, idade: idade);
        await usuarioDao.inserirUsuario(usuario);

      } else{
        print('Opção Inválida, Tente Novamente!');
      }
    }
  }
}