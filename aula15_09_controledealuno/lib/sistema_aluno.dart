import 'dart:io';

import 'package:aula15_09_controledealuno/aluno.dart';

class SistemaAluno {
  void iniciar(){
    print('Informe o nome do Aluno');
    String nome = stdin.readLineSync()!;

    print('Informe a idade do Aluno');
    int idade = int.parse(stdin.readLineSync()!);

    print('Informe o email do Aluno');
    String email = stdin.readLineSync()!;

    //Instanciar o objeto aluno
    Aluno aluno = Aluno(nome, idade, email);

    //Inserir as Notas
    print('Informe a primeira nota: ');
    double nota1 = double.parse(stdin.readLineSync()!);

    
    print('Informe a segunda nota: ');
    double nota2 = double.parse(stdin.readLineSync()!);
    
    print('Informe a terceira nota: ');
    double nota3 = double.parse(stdin.readLineSync()!);

    //Metoda escrever o objeto aluno
    aluno.inserirNota(nota1, nota2, nota3);

    //metodo calcular nota
    aluno.calculaMedia();

    //Metodo exibir informações
    aluno.exibirDados();
  }
}