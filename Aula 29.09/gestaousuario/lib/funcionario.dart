abstract class Funcionario {
  String _nome;
  double _salario;

  Funcionario(this._nome, this._salario);

  String get nome => _nome;
  double get salario => _salario;

  void exibirDados();
  double calcularBonus();

  
}