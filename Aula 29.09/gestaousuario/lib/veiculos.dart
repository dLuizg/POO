abstract class Veiculos {
  String modelo;
  int ano;

  Veiculos(this.modelo, this.ano);

  void exibirInfo();
  double calcularValor();
}

class Carros extends Veiculos {

  Carros(String modelo, int ano) : super(modelo, ano);

  @override
  void exibirInfo() {
    print('Carro: $modelo - Ano: $ano');
  }

  @override
  double calcularValor() {
    return 5000 - (2025 - ano) + 2000;
  }
}

class Moto extends Veiculos{
  Moto(super.modelo, super.ano);

  @override
  void exibirInfo() {
    print('Moto: $modelo - Ano: $ano');
  }

  @override
  double calcularValor() {
    return 3000 - (2025 - ano) + 2000;
  }
}