class Aluno{
  String nome;
  int idade;
  String email;
  List<double> notas = [];
  double media = 0.0;


  //Método Construtor
  Aluno(this.nome, this.idade, this.email);


  //Método para inserir nota
  void inserirNota(double nota1, double nota2, double nota3){
    notas = [nota1, nota2, nota3];
  }

  //Método para calcular a média
  void calculaMedia(){
    if(notas.length == 3){
      media = notas.reduce((a,b)=> a+b) /3;
    }
  }

  //Método para exibir os dados
  void exibirDados(){
    print('---- Dados do Aluno ----');
    print('Nome: $nome');
    print('Idade: $idade');
    print('E-mail: $email');
    print('Notas: ${notas.join(', ')}');
    print('Média: ${media.toStringAsFixed(2)}');
  }
}